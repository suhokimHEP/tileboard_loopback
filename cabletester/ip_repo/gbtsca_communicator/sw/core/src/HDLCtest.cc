#include "hgcsca/HDLCFactory.hh"
#include "hgcsca/HDLC.hh"
#include "getopt.h"

using namespace hgcsca;

void usage(const char* name) {
      fprintf(stderr, "Usage: %s [-l driver library] -u uri [actions]\n",
	      name);
      fprintf(stderr,"  Actions include:\n");
      fprintf(stderr,"   -r Generate reset:\n");
      fprintf(stderr,"   -s chan,reg,len,data\n");
}

int main(int argc, char* argv[]) {

  int opt;
  HDLC* theHDLC=0;
  if (argc<2) usage(argv[0]);
  

  while ((opt = getopt(argc, argv, "l:u:rs:")) != -1) {
    switch (opt) {
    case 'l':
      if (!HDLCFactory::registerPluginLibrary(optarg)) {
	fprintf(stderr,"Unable to open library '%s'\n",optarg);
	return EXIT_FAILURE;
      } break;
    case 'u':
      theHDLC=HDLCFactory::construct(optarg);
      if (!theHDLC) {
	fprintf(stderr,"Unable to create instance using '%s'\n",optarg);
	return EXIT_FAILURE;
      }
      theHDLC->configure(optarg);
      break;
    case 'r':
      if (theHDLC) theHDLC->reset();
      else printf("  Unable to open HDLC\n");
      break;
    case 's': {
      int chan,reg,len,data;
      if (sscanf(optarg,"%d,0x%x,%d,0x%x",&chan,&reg,&len,&data)==4 ||
	  sscanf(optarg,"%d,%d,%d,0x%x",&chan,&reg,&len,&data)==4 ||
	  sscanf(optarg,"%d,%d,%d,%d",&chan,&reg,&len,&data)==4) {
	if (theHDLC) {
	  HDLC::Response resp=theHDLC->requestSync(chan,reg,len,data);
	  printf("  Response: err=0x%02x len=%d data=0x%08x\n",resp.error(),resp.len(),resp.data());
	} else printf("  Unable to open HDLC\n");
      } else printf("  Unable to parse command : '%s'\n",optarg);
    }
      break;
    default: /* '?' */
      usage(argv[0]);
      exit(EXIT_FAILURE);
    }
  }

  
}
