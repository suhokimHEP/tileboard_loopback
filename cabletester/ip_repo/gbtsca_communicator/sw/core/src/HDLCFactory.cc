#include "hgcsca/HDLC.hh"
#include "hgcsca/HDLCFactory.hh"
#include <dlfcn.h>

namespace hgcsca {
  std::vector<void*> HDLCFactory::plugins_;

  bool HDLCFactory::registerPluginLibrary(const std::string& file) {
    void* ptr=dlopen(file.c_str(),RTLD_NOW|RTLD_GLOBAL);
    if (ptr!=0) {
      plugins_.push_back(ptr);
      return true;
    } else {
      fprintf(stderr,"Error registering plugin %s: %s\n",file.c_str(),dlerror());
      return false;
    }
  }

  typedef HDLC* makerFunc();
  
  HDLC* HDLCFactory::construct(const std::string& uri) {
    if (uri.find(':')==std::string::npos){
	fprintf(stderr,"Can't find :\n");
	return 0;
    }
    std::string method=uri.substr(0,uri.find(':'));
    fprintf(stderr, "loading method: %s\n",method.c_str());
    std::string loadername="hgcsca_hdlc_make_"+method;
    fprintf(stderr, "loading: %s\n",loadername.c_str());
    
    // try directly-linked first
    void*
      fp=dlsym(RTLD_DEFAULT,loadername.c_str());
    if (fp!=0){
	fprintf(stderr,"found the accessor\n");
	return (*((makerFunc*)fp))();
    }
    
    for (std::vector<void*>::iterator i=plugins_.begin(); i!=plugins_.end(); i++) {
      //fprintf(stderr,"i.c_str(): %s\n", i);
      fprintf(stderr,"looping through plugins\n");
      fp=dlsym(*i,loadername.c_str());
      if (fp!=0) return (*((makerFunc*)fp))();
    }
    return 0;
  }
}
