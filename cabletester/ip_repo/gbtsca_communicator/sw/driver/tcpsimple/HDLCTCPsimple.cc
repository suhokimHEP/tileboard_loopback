#include "hgcsca/HDLC.hh"
#include <stdio.h> 
#include <sys/socket.h> 
#include <stdlib.h> 
#include <netinet/in.h> 
#include <string.h>
#include <arpa/inet.h>
#include <unistd.h>

using namespace hgcsca;

class HDLCTCPsimple : public hgcsca::HDLC {
public:
  HDLCTCPsimple();
  ~HDLCTCPsimple();
  virtual void configure(const std::string& uri);
  virtual hgcsca::HDLC::Response requestSync(uint8_t channel, uint8_t reg, uint8_t len, uint32_t data);

  virtual bool reset();
private:
  std::string readup();
  hgcsca::HDLC::Response getResponse();
  int socket_;
};

IMPLEMENT_HDLC_LOADER(HDLCTCPsimple,tcpsimple);

HDLCTCPsimple::HDLCTCPsimple() {
  socket_=0;
}

HDLCTCPsimple::~HDLCTCPsimple() {
  if (socket_) {
    write(socket_,"quit\n",5);
    close(socket_);
  }
}

std::string HDLCTCPsimple::readup() {
  std::string retval;

  if (socket_) {
    char c;
    int i;
    do {
      c=0;
      i=read(socket_,&c,1);
      if (i && c>=0x20 && c<0x7E) retval+=c;
    } while (i && retval.find("hdlc>")==std::string::npos);
  }
  if (retval.find("hdlc>")!=std::string::npos) { retval=retval.substr(0,retval.find("hdlc>")); }

  return retval;
}

void HDLCTCPsimple::configure(const std::string& uri) {
  std::string addr;
  size_t cpos=uri.find("://");
  if (cpos!=std::string::npos) addr=uri.substr(cpos+3);
  else {
    cpos=uri.find(":");
    addr=uri.substr(cpos+1);
  }
 
  int port=44044;
  cpos=addr.find(':');
  if (cpos!=std::string::npos) {
    port=atoi(addr.substr(cpos+1).c_str());
    addr=addr.substr(0,cpos);
  }
  
  struct sockaddr_in serv_addr; 
  
  if ((socket_ = socket(AF_INET, SOCK_STREAM, 0)) < 0) 
    { 
      printf("\n Socket creation error \n");
      return;
    } 
   
  memset(&serv_addr, '0', sizeof(serv_addr)); 
   
  serv_addr.sin_family = AF_INET; 
  serv_addr.sin_port = htons(port); 
       
    // Convert IPv4 and IPv6 addresses from text to binary form 
  if(inet_pton(AF_INET,addr.c_str(), &serv_addr.sin_addr)<=0)  
    { 
      printf("\nInvalid address '%s'/ Address not supported \n",addr.c_str());
      socket_=0;
      return; 
    } 
  
  if (connect(socket_, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) 
    { 
      printf("\nConnection Failed \n"); 
      socket_=0;
      return; 
    } 
  std::string a=readup();
}


bool HDLCTCPsimple::reset() {
  if (!socket_) return false;
  write(socket_,"reset\n",6);
  std::string a=readup();
  return true;
}

HDLC::Response HDLCTCPsimple::requestSync(uint8_t channel, uint8_t reg, uint8_t len, uint32_t data) {
  if (!socket_) return HDLC::Response(0,0,0,0);
  char buffer[200];
  int xlen=sprintf(buffer,"req %d,%d,%d,0x%08x\n",channel,reg,len,data);
  write(socket_,buffer,xlen);
  std::string resp=readup();
  int rerr, rlen;
  uint32_t rdata;
  if (sscanf(resp.c_str()," %d,%d,0x%x ",&rerr,&rlen,&rdata)==3) {
    return HDLC::Response(this,rlen,rerr,rdata);
  }
  return HDLC::Response(0,0,0,0);
}
