#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <algorithm>
#include <unistd.h>
#include "Menu.hh"
#include "hgcsca/SCA.hh"
#include "hgcsca/HDLCFactory.hh"
#include <string.h>
#include <map>

using namespace hgcsca;

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

void RunMenu( SCA* target );

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

void printtime(int digits=9,FILE* finto=0) {
  timespec tnow;
  struct tm t;
  char buffer[120];
  clock_gettime(CLOCK_REALTIME,&tnow);
  localtime_r(&(tnow.tv_sec),&t);
  
  strftime(buffer,100,"%Y-%m-%d %H:%M:%S",&t);
  if (digits==9) sprintf(&buffer[strlen(buffer)],".%09ld",tnow.tv_nsec);
  else if (digits==6) sprintf(&buffer[strlen(buffer)],".%06ld",tnow.tv_nsec/1000);
  else if (digits==3) sprintf(&buffer[strlen(buffer)],".%03ld",tnow.tv_nsec/1000000);
  if (finto) fprintf(finto,buffer);
  else printf(buffer);  
}

int main(int argc, char* argv[]) {
  //  gROOT->SetBatch(true);

  //if not enough arguments output usage
  if (argc<2 || !strcmp(argv[1],"-h")) {
    printf("Usage: hgcscaTool [accessor string] [-l library]\n");
    printf("   -l : driver library to load (can be repeated)\n");
    printf("   -h : this help\n");
    printf("   Loads options file from ${HGCSCATOOL_RC}, ${HOME}/.hgcscatoolrc and ${PWD}/.hgcscatoolrc\n");
    printf("\n");
    printf("-------\nItems in RC/Options file:\n-----------------------\n");
    printf( " LIBRARY={location of driver library to load} (can be repeated)\n");
    return 1;
  }

  const char* rcFILE=getenv("HGCSCATOOL_RC");
  std::string home=getenv("HOME");

  HDLC* link(0);
  
  if (rcFILE!=0){
	loadOptions(rcFILE);
  }
  loadOptions(home+"/.hgcscatoolrc");
  loadOptions(".hgcscatoolrc");
  int opt;
  
  while ((opt=getopt(argc,argv,"l:")) !=-1) {
    switch (opt) {
    case 'l':
      if (!HDLCFactory::registerPluginLibrary(optarg)) {
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
    link=HDLCFactory::construct(uri);
      if (!link) {
	fprintf(stderr,"Unable to create instance using '%s'\n",uri.c_str());
	return EXIT_FAILURE;
      } 
      link->configure(uri);
      printf("Connected to '%s'\n",uri.c_str());
  }

  if (link==0) { return EXIT_FAILURE; }
  
  SCA target(link);
  RunMenu( &target  ) ;
  
  return 0;
}

#include "hgcscaCTRL.icc"
#include "hgcscaI2C.icc"
#include "hgcscaGPIO.icc"
#include "hgcscaADC.icc"
#include "hgcscaRESET.icc"

void RunMenu( SCA* target ) {

     typedef Menu<SCA> uMenu ;

     uMenu::Line menu_ctrl_lines[] = {
       uMenu::Line("LIST", "List which sub-blocks are enabled",ctrl_action),
       uMenu::Line("ENABLE", "Enable a sub-block",ctrl_action),
       uMenu::Line("DISABLE", "Enable a sub-block",ctrl_action),
       uMenu::Line("CHIPID", "Read the chip id",ctrl_action),
       uMenu::Line("SEUREAD", "Read the SEU counter",ctrl_action),
       uMenu::Line("SEURESET", "Reset the SEU counter",ctrl_action),       
       uMenu::Line("QUIT","Back to top menu"),
       uMenu::Line()
     };
     uMenu menu_ctrl(menu_ctrl_lines);
     

     uMenu::Line menu_i2c_lines[] = {
       uMenu::Line("PICK", "Pick an I2C bus",i2c_action),
       uMenu::Line("WRITE", "Set the full 32-bit word",i2c_action),
       uMenu::Line("READ","Read from an I2C address",i2c_action),
       uMenu::Line("QUIT","Back to top menu"),
       uMenu::Line()
     };
     uMenu menu_i2c(&i2c_render,menu_i2c_lines);

     uMenu::Line menu_gpio_lines[] = {
       uMenu::Line("SET", "Set a bit",gpio_action),
       uMenu::Line("CLEAR", "Clear a bit",&gpio_action),
       uMenu::Line("WRITE", "Set the full 32-bit word",&gpio_action),
       uMenu::Line("OUTPUT","Set a bit for output",&gpio_action),
       uMenu::Line("INPUT","Set a bit for input",&gpio_action),
       uMenu::Line("QUIT","Back to top menu"),
       uMenu::Line()
     };
     uMenu menu_gpio(&gpio_render,menu_gpio_lines);

     uMenu::Line menu_adc_lines[] = {
       uMenu::Line("ONCE", "Read a single channel once",adc_action),
       uMenu::Line("CUREN", "Enable the current source on a channel",adc_action),
       uMenu::Line("CURDIS", "Disable the current source on a channel",adc_action),
       uMenu::Line("CSV", "Multiple channel reads to CSV",adc_action),
       uMenu::Line("DAC", "Program DAC",adc_action),
       uMenu::Line("QUIT","Back to top menu"),
       uMenu::Line()
     };
     uMenu menu_adc(menu_adc_lines);

     uMenu::Line menu_reset_lines[] = {
       uMenu::Line("HDLC", "Reset the HDLC blocks",reset_action),
       uMenu::Line("CHIP", "Reset the chip",reset_action),
       uMenu::Line("BOTH", "Reset both the HDLC blocks and the chip",reset_action),
       uMenu::Line("QUIT","Back to top menu"),
       uMenu::Line()
     };
     uMenu menu_reset(menu_reset_lines);

     
     uMenu::Line menu_utop_lines[] = {
       uMenu::Line("CTRL","Control registers", &menu_ctrl),
       uMenu::Line("I2C","I2C", &menu_i2c),
       uMenu::Line("GPIO","General-purpose IO", &menu_gpio),
       uMenu::Line("ADC","Analog-to-digital converter (and DAC)", &menu_adc),
       uMenu::Line("RESET","Resets", &menu_reset),
       uMenu::Line()
     };
     uMenu menu_utop(menu_utop_lines);

     menu_utop.addLine(uMenu::Line("EXIT", "Exit this tool (also QUIT)" ));
     menu_utop.addLine(uMenu::Line("QUIT", "Exit this tool", true));

     menu_utop.steer(target) ;
}

