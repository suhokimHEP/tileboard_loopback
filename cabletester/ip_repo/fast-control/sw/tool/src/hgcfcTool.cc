#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <algorithm>
#include <unistd.h>
#include "Menu.hh"
#include "hgcfc/FastControlFactory.hh"
#include "hgcfc/FastControl.hh"
#include <string.h>
#include <map>

using namespace hgcfc;

std::map<std::string,std::string> Options;

void loadOptions(const std::string& optfile) {
  FILE* f=fopen(optfile.c_str(),"r");
  if (f==0){
	return;
  }
  char buffer[2048];

  while (!feof(f)) {
    buffer[0]=0;
    fgets(buffer,2047,f);
    if (strchr(buffer,'#')!=0) (*strchr(buffer,'#'))=0; // trim out comments
    if (!strchr(buffer,'=')) continue; // no equals sign.
    std::string key;
    int i;
    for (i=0; buffer[i]!='='; i++)
      if (!isspace(buffer[i])) key+=toupper(buffer[i]);
    std::string value;
    bool quoted=false;
    for (i++; buffer[i]!=0; i++)
      if (buffer[i]=='"') quoted=!quoted;
      else if (!isspace(buffer[i]) || quoted) value+=buffer[i];
    Options[key]=value;
  }
  fclose(f);
}

void RunMenu( FastControl* target );

std::string getOpt(const std::string& opt, const std::string& def) {
  std::map<std::string,std::string>::const_iterator i=Options.find(opt);
  if (i==Options.end()) return def;
  else return i->second;
}

void printbits(uint32_t value, int bits=32, int separate=4) {
  for (int i=bits-1; i>=0; i--) {
    printf("%d",((value>>i)&0x1));
    if ((i%separate)==0 && i!=0) printf(" ");
  }
}

int main(int argc, char* argv[]) {
  //  gROOT->SetBatch(true);

  //if not enough arguments output usage
  if (argc<2 || !strcmp(argv[1],"-h")) {
    printf("Usage: hgcfctool [accessor string] [-l library]\n");
    printf("   -l : driver library to load (can be repeated)\n");
    printf("   -h : this help\n");
    printf("   Loads options file from ${HGCSCATOOL_RC}, ${HOME}/.hgcscatoolrc and ${PWD}/.hgcscatoolrc\n");
    printf("\n");
    printf("-------\nItems in RC/Options file:\n-----------------------\n");
    printf( " LIBRARY={location of driver library to load} (can be repeated)\n");
    return 1;
  }

  const char* rcFILE=getenv("HGCFCTOOL_RC");
  std::string home=getenv("HOME");

  FastControl* fc(0);
  
  if (rcFILE!=0){
	loadOptions(rcFILE);
  }
  loadOptions(home+"/.hgcfctoolrc");
  loadOptions(".hgcfctoolrc");
  int opt;
  
  while ((opt=getopt(argc,argv,"l:")) !=-1) {
    switch (opt) {
    case 'l':
      if (!FastControlFactory::registerPluginLibrary(optarg)) {
	fprintf(stderr,"Unable to open library '%s'\n",optarg);
	return EXIT_FAILURE;
      } 
      break;
    default:
      break;
    }
  }

  if (optind!=argc) {
    std::string uri(argv[optind]);
    fc=FastControlFactory::construct(uri);
      if (!fc) {
	fprintf(stderr,"Unable to create instance using '%s'\n",uri.c_str());
	return EXIT_FAILURE;
      } 
      fc->configure(uri);
      printf("Connected to '%s'\n",uri.c_str());
  }

  if (fc==0) { return EXIT_FAILURE; }
  
  RunMenu( fc  ) ;

  delete fc; // cleanup
  
  return 0;
}

void generalStatus(FastControl*);
void detailedStatus(FastControl*);

#include "hgcfcCTRL.icc"
#include "hgcfcCalibration.icc"
#include "hgcfcL1A.icc"
#include "hgcfcOrbitsync.icc"

void RunMenu( FastControl* target ) {

     typedef Menu<FastControl> uMenu ;

     uMenu::Line menu_ctrl_lines[] = {
       uMenu::Line("DISABLE", "Toggle enable for fast control stream",ctrl_action),
       uMenu::Line("IDLE", "Toggle force fast control stream to idle",ctrl_action),
       uMenu::Line("OCR", "Send an OrbitCountReset",ctrl_action),
       uMenu::Line("CALIBREQ", "Send a single Calibration Request cycle",ctrl_action),
       uMenu::Line("RESYNC", "Send a DAQ-resync",ctrl_action),
       uMenu::Line("INTERNALTEST", "Send an Internal Test command",ctrl_action),
       uMenu::Line("LINKRESET","Send a link reset",ctrl_action),
       uMenu::Line("COUNTERSRESET","Reset counters",ctrl_action),
       uMenu::Line("QUIT","Back to top menu"),
       uMenu::Line()
     };
     uMenu menu_ctrl(menu_ctrl_lines);

     uMenu::Line menu_l1a_lines[] = {
       uMenu::Line("ENABLE","Enable periodic L1A generator", l1a_action),
       uMenu::Line("SETUP","Setup a periodic L1A generator", l1a_action),
       uMenu::Line("SINGLE","Produce a single L1A",l1a_action),
       uMenu::Line("QUIT","Back to top menu"),
       uMenu::Line()
     };
     uMenu menu_l1a(menu_l1a_lines);
     
     uMenu::Line menu_utop_lines[] = {
       uMenu::Line("STATUS","Detailed status",detailedStatus),
       uMenu::Line("CTRL","Control registers", &menu_ctrl),
       uMenu::Line("ORBITSYNC","Orbitsync setup",orbitsync_action),
       uMenu::Line("CALIBREQ","Calibration setup", calib_action),
       uMenu::Line("L1A","L1A commands", &menu_l1a),
       uMenu::Line()
     };
     uMenu menu_utop(generalStatus,menu_utop_lines);

     menu_utop.addLine(uMenu::Line("EXIT", "Exit this tool (also QUIT)" ));
     menu_utop.addLine(uMenu::Line("QUIT", "Exit this tool", true));

     menu_utop.steer(target) ;
}

void generalStatus(FastControl* fc) {
  bool enabled, idle_force, orbitsync_enabled, calibreq_enabled, calibl1a, l1agen_enabled[2];
  uint32_t orbitsync_bx;
  uint16_t calib_req_bx, calib_l1a_bx;
  bool calib_req_regular_l1a;
  uint32_t calib_req_orbit_prescale;
  uint16_t l1agen_bx[2];
  uint32_t l1agen_prescale[2];
  uint16_t fwV, bx;

  fwV=fc->firmwareVersion();
  bx=fc->currentBX();
  fc->getControlStatus(enabled,idle_force,orbitsync_enabled, calibreq_enabled, calibl1a, l1agen_enabled[0], l1agen_enabled[1]);
  orbitsync_bx=fc->getOrbitsyncBX();
  fc->getCalibReqSetup(calib_req_bx, calib_l1a_bx, calib_req_orbit_prescale, calib_req_regular_l1a);

  fc->getL1AGenSetup('A',l1agen_bx[0],l1agen_prescale[0]);
  fc->getL1AGenSetup('B',l1agen_bx[1],l1agen_prescale[1]);

  printf(" Fast control: BX=%d (0x%03x) %s %s  FW=0x%04x\n",bx,bx,(enabled)?("ENABLED"):("DISABLED"),(idle_force)?("IDLE-FORCE"):(""),fwV);
  printf(" Orbit sync: %s BX=%d (0x%03x)\n",((orbitsync_enabled)?("ENABLED"):("DISABLED")),orbitsync_bx,orbitsync_bx);
  printf(" Calib req: %s  Req-BX=%d (0x%03x)  L1A-BX=%d (0x%03x) Orbit prescale=%d %s\n",
	 (calibreq_enabled)?("ENABLED"):("DISABLED"),
	 calib_req_bx, calib_req_bx,
	 calib_l1a_bx, calib_l1a_bx,
	 calib_req_orbit_prescale,
	 calib_req_regular_l1a?(" Using regular L1A"):(""));
  for (int i=0;i<2; i++) {
    printf(" L1A periodic generator %c: %s BX=%d (0x%03x) Prescale=%d\n",
	   i+'A',(l1agen_enabled[i])?("ENABLED"):("DISABLED"),
	   l1agen_bx[i],l1agen_bx[i],l1agen_prescale[i]);
  }
  printf("\n");
}

void detailedStatus(FastControl* fc) {
  std::vector<uint32_t> ctrs=fc->readCounters();
  const char* names[] = {"Encoding errors","Orbit syncs","Orbit count resets","Calibration requests",
			 "Calibration L1As","Link resets","DAQ Resyncs","Internal test requests",
			 "L1As"};

  printf("  %-30s  : %-12s\n","Item","Count");
  printf(" ---------------------------------------------------\n");
  for (size_t i=0; i<ctrs.size(); i++) {
    printf("  %-30s  : %12d\n",names[i],ctrs[i]);
  }
  printf(" ---------------------------------------------------\n\n");
}
