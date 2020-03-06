#include <unistd.h> 
#include <stdio.h> 
#include <sys/socket.h> 
#include <stdlib.h> 
#include <netinet/in.h> 
#include <string.h> 
#include <string>
#include "hgcsca/HDLC.hh"
#include "hgcsca/HDLCFactory.hh"
#include <signal.h>



void usage(const char* name) {
      fprintf(stderr, "Usage: %s [-l driver library] -u uri [-p port]\n",
	      name);
}

char* now() {
  static char buffer[100];
  time_t t;
  struct tm *tmp;
  
  t = time(NULL);
  tmp = gmtime(&t);
  strftime(buffer, 100, "%F %T GMT", tmp);
  return buffer;
}

int main(int argc, char *argv[]) 
{ 

  signal(SIGPIPE,SIG_IGN);
  
  int port=44044,opt;
  using namespace hgcsca;

  HDLC* hdlc(0);

  while ((opt = getopt(argc, argv, "l:u:p:")) != -1) {
    switch (opt) {
    case 'l':
      if (!HDLCFactory::registerPluginLibrary(optarg)) {
	fprintf(stderr,"Unable to open library '%s'\n",optarg);
	return EXIT_FAILURE;
      } break;
    case 'p':
      port=strtol(optarg,0,0);
      break;
    case 'u':
      hdlc=HDLCFactory::construct(optarg);
      if (!hdlc) {
	fprintf(stderr,"Unable to create instance using '%s'\n",optarg);
	return EXIT_FAILURE;
      }
      hdlc->setExceptionSuppress(true); // hand the problems to the other end...
      break;
    break;
    default: /* '?' */
      usage(argv[0]);
      exit(EXIT_FAILURE);
    }
  }

  int server_fd, new_socket, valread;
  struct sockaddr_in address; 
  int addrlen = sizeof(address); 
  char buffer[1024] = {0}; 
  
  // Creating socket file descriptor 
  if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) 
    { 
        perror("socket failed"); 
        exit(EXIT_FAILURE); 
    } 
       
  if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, 
		 &opt, sizeof(opt))) 
    { 
      perror("setsockopt"); 
      exit(EXIT_FAILURE); 
    } 
  address.sin_family = AF_INET; 
  address.sin_addr.s_addr = INADDR_ANY; 
  address.sin_port = htons( port ); 
       
  // Forcefully attaching socket to the port 8080 
  if (bind(server_fd, (struct sockaddr *)&address,  
	   sizeof(address))<0) 
    { 
      perror("bind failed"); 
      exit(EXIT_FAILURE); 
    } 
  if (listen(server_fd, 3) < 0) 
    { 
      perror("listen"); 
      exit(EXIT_FAILURE); 
    }
  bool done=false;
  while (!done) {
    if ((new_socket = accept(server_fd, (struct sockaddr *)&address,  
			     (socklen_t*)&addrlen))>0) { 
      
      printf("%s : CONNECT\n",now());
      std::string cmd;
      do {
	cmd.clear();
	char c;
	write(new_socket,"hdlc> ",6);
	do {
	  c=0;
	  int i=read(new_socket, &c, 1);
	  if (i==0) {
	    cmd="quit";
	    break;
	  }
	  if (c!=0 && c>0x20 && c<0x7e) cmd+=c;
	} while (c!=0 && c!='\n');
	
	int chan,reg,len,data;
	
	if (!strcasecmp(cmd.c_str(),"reset")) {
	  printf("%s : RESET\n",now());
	  bool rv=hdlc->reset();
	  if (rv) write(new_socket,"ok\r\n",4);
	  else write(new_socket,"error\r\n",7);
	} else if (sscanf(cmd.c_str(),"req %d,%d,%d,0x%x",&chan,&reg,&len,&data)==4 ||
		   sscanf(cmd.c_str(),"req %d,%d,%d,%x",&chan,&reg,&len,&data)==4) {
	  printf("%s : REQ 0x%02x,0x%02x,%d,0x%08x ",now(),chan,reg,len,data);
	  HDLC::Response resp=hdlc->requestSync(chan,reg,len,data);
	  printf(" => err=0x%02x len=%d data=0x%08x\n",resp.error(),resp.len(),resp.data());
	  int len=sprintf(buffer,"%d,%d,0x%08x\n",resp.error(),resp.len(),resp.data());
	  write(new_socket,buffer,len);
	} else if (!strcasecmp(cmd.c_str(),"quit")) { 
	}else printf("%s : UNKNOWN COMMAND '%s'\n",now(),cmd.c_str());      
      } while (strcasecmp(cmd.c_str(),"quit"));
      if (new_socket>0) close(new_socket);
      printf("%s : CLOSE\n",now());
    }
  }


  return 0;
}
