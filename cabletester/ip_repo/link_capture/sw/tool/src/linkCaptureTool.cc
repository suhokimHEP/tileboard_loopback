#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <algorithm>
#include <unistd.h>
#include "Menu.hh"
#include "linkcapture/LinkCaptureFactory.hh"
#include "linkcapture/LinkCapture.hh"
#include <string.h>
#include <map>
#include <vector>
#include <utility>
#include <functional>

using namespace linkcapture;

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

void RunMenu( const std::vector<LinkCapture*>& targets );

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
    printf("Usage: linkcapturetool [accessor string] [-l library]\n");
    printf("   -l : driver library to load (can be repeated)\n");
    printf("   -h : this help\n");
    printf("   Loads options file from ${HGCSCATOOL_RC}, ${HOME}/.hgcscatoolrc and ${PWD}/.hgcscatoolrc\n");
    printf("\n");
    printf("-------\nItems in RC/Options file:\n-----------------------\n");
    printf( " LIBRARY={location of driver library to load} (can be repeated)\n");
    return 1;
  }

  //Make this not a hardcode eventually
  std::vector<std::pair<uint32_t, uint32_t>> addresses = {
      {0x80018000, 0x80010000},
      {0x80028000, 0x80020000}
  };

  const char* rcFILE=getenv("LINKCAPTURETOOL_RC");
  std::string home=getenv("HOME");

  std::vector<LinkCapture*> links;
  
  if (rcFILE!=0){
	loadOptions(rcFILE);
  }
  loadOptions(home+"/.linkcapturetoolrc");
  loadOptions(".linkcapturetoolrc");
  int opt;
  
  while ((opt=getopt(argc,argv,"l:")) !=-1) {
    switch (opt) {
    case 'l':
      if (!LinkCaptureFactory::registerPluginLibrary(optarg)) {
	fprintf(stderr,"Unable to open library '%s'\n",optarg);
	return EXIT_FAILURE;
      } 
      break;
    default:
      break;
    }
  }

  for(const auto& addressPair : addresses)
  {
      if (optind!=argc)
      {
          LinkCapture *fc;
          std::string uri(argv[optind]);
          fc=LinkCaptureFactory::construct(uri);
          if (!fc)
          {
              fprintf(stderr,"Unable to create instance using '%s'\n",uri.c_str());
              return EXIT_FAILURE;
          } 
          fc->setAddresses(addressPair.first, addressPair.second);
          fc->configure(uri);
          links.push_back(fc);
          printf("Connected to '%s' (%u, %u)\n",uri.c_str(), addressPair.first, addressPair.second);

          if (fc==0) { return EXIT_FAILURE; }
      }
  }

  RunMenu( links  ) ;

  for(auto* link : links)
  {
      delete link; // cleanup
  }
  
  return 0;
}

void generalStatus(const std::vector<LinkCapture*>*);
void detailedStatus(uint32_t, const std::vector<LinkCapture*>*);

static void link_action(uint32_t ilink, const std::string& cmd, const std::vector<LinkCapture*>* links) 
{
    LinkCapture* link = (*links)[ilink];

    if (cmd=="RESET")
    {
        link->reset();
    }
    else if (cmd=="ALIGN")
    {
        link->align();
    }
    else if(cmd=="DELAY")
    {
        uint32_t delay = BaseMenu::readline_uint("IDELAY delay (0-511): ", 0);

        if(delay <= 511) link->setDelay(delay);
        else             printf("delay must be between 0 and 511, try again\n");
    }
    else if(cmd=="PATTERN")
    {
        uint32_t pattern = BaseMenu::readline_uint("Link alignment pattern: ", 0xaccccccc);
        
        link->setAlignPattern(pattern);
    }
    else if(cmd=="CAPTUREMODE")
    {
        uint32_t mode = BaseMenu::readline_uint("Capture mode (0:none, 1:BX, 2:L1A, 3:Immediate): ", 1);
        
        link->setCaptureMode(mode);
    }
    else if(cmd=="BXOROFFSET")
    {
        uint32_t bx_or_offset = BaseMenu::readline_uint("BX or offset (The trigger BX in BX capture mode, an offset in L1A mode): ", 1);

        link->setL1OffsetOrBX(bx_or_offset);
    }
    else if(cmd=="LENGTH")
    {
        uint32_t length = BaseMenu::readline_uint("Capture length in BX: ", 1024);
        
        link->setAquireLength(length);
    }
    else if(cmd=="AQUIRE")
    {
        link->aquire();
    }
    else if(cmd=="DUMP")
    {
        link->dumpData();
    }
    else if(cmd=="CLEAR")
    {
        link->resetBRAM();
    }
}

void generalStatus(const std::vector<LinkCapture*>*)
{
    printf("HI THERE!  This should be the general status menu ...\n");
}

void detailedStatus(uint32_t ilink, const std::vector<LinkCapture*>* links) 
{
    LinkCapture* link = (*links)[ilink];

    LinkCapture::LinkCaptureStatus status = link->getStatus();

    printf("Link Status\n");
    printf(" ---------------------------------------------------\n");
    printf("  %-30s  : %-12d\n", "link aligned",     status.link_aligned);
    printf("  %-30s  : %-12d\n", "delay ready",      status.delay_ready);
    printf("  %-30s  : %-12d\n", "waiting for trig", status.waiting_for_trig);
    printf("  %-30s  : %-12d\n", "writing data",     status.writing_data);
    printf("  %-30s  : %-12d\n", "delay output",     status.delay);
    printf("  %-30s  : %-12d\n", "aligned count",    status.link_aligned_cnt);
    printf("  %-30s  : %-12d\n", "error count",      status.link_error_cnt);
    printf("  %-30s  : %-12x\n", "align pattern",    status.align_pattern);
    printf("  %-30s  : %-12d\n", "align state",      status.align_state);
    printf("  %-30s  : %-12d\n", "delay input",      status.delay_in);
    printf("  %-30s  : %-12d\n", "capture mode",     status.capture_mode);
    printf("  %-30s  : %-12d\n", "l1 offset or BX",  status.l1aoffset_or_bx);
    printf("  %-30s  : %-12d\n", "aquire length",    status.aquire_length);
    printf(" ---------------------------------------------------\n\n");
}

void RunMenu( const std::vector<LinkCapture*>& targets ) 
{
    typedef Menu<const std::vector<LinkCapture*>> uMenu ;

    auto creatLinkMenu = [&](uint32_t ilink)
        {
            using namespace std::placeholders;
            auto ds = std::bind(detailedStatus, ilink,  _1);
            auto la = std::bind(link_action, ilink,  _1, _2);

            std::vector<uMenu::Line> menu_link_lines = {
                uMenu::Line("STATUS",       "Get link status",         ds),
                uMenu::Line("RESET",        "Reset link",              la),
                uMenu::Line("ALIGN",        "Trigger link alignment",  la),
                uMenu::Line("DELAY",        "Set idelay setting",      la),
                uMenu::Line("PATTERN",      "set alignment pattern",   la),
                uMenu::Line("CAPTUREMODE",  "set capture mode",        la),
                uMenu::Line("BXOROFFSET",   "set bx or length",        la),
                uMenu::Line("LENGTH",       "set aquire length",       la),
                uMenu::Line("AQUIRE",       "trigger data aquisition", la),
                uMenu::Line("DUMP",         "print data to screen",    la),
                uMenu::Line("CLEAR",        "clear BRAM",              la),
                uMenu::Line("QUIT",         "Back to top menu."),
                uMenu::Line()
            };
            return menu_link_lines;
        };

    uMenu::Line menu_utop_lines[] = { uMenu::Line()  };
    uMenu menu_utop(generalStatus,menu_utop_lines);
    std::vector<uMenu> link_menus;
    link_menus.reserve(targets.size());

    for(unsigned int i = 0; i < targets.size(); ++i)
    {
        link_menus.emplace_back(creatLinkMenu(i).data());
        uMenu& menuRef = link_menus.back();
        menu_utop.addLine(uMenu::Line(("LINK"+std::to_string(i)).c_str(), ("Configure link and aquire data for link "+std::to_string(i)).c_str(), &menuRef));
    }
    menu_utop.addLine(uMenu::Line("EXIT", "Exit this tool (also QUIT)" ));
    menu_utop.addLine(uMenu::Line("QUIT", "Exit this tool", true));

    menu_utop.steer(&targets) ;
}

