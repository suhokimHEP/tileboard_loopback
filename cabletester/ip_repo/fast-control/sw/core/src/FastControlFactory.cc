#include "hgcfc/FastControl.hh"
#include "hgcfc/FastControlFactory.hh"
#include <dlfcn.h>

namespace hgcfc {
  std::vector<void*> FastControlFactory::plugins_;

  bool FastControlFactory::registerPluginLibrary(const std::string& file) {
    void* ptr=dlopen(file.c_str(),RTLD_NOW|RTLD_GLOBAL);
    if (ptr!=0) {
      plugins_.push_back(ptr);
      return true;
    } else {
      fprintf(stderr,"Error registering plugin %s: %s\n",file.c_str(),dlerror());
      return false;
    }
  }

  typedef FastControl* makerFunc();
  
  FastControl* FastControlFactory::construct(const std::string& uri) {
    if (uri.find(':')==std::string::npos){
	return 0;
    }
    std::string method=uri.substr(0,uri.find(':'));
    std::string loadername="hgcfc_fastcontrol_make_"+method;
    
    // try directly-linked first
    void*
      fp=dlsym(RTLD_DEFAULT,loadername.c_str());
    if (fp!=0){
	return (*((makerFunc*)fp))();
    }
    
    for (std::vector<void*>::iterator i=plugins_.begin(); i!=plugins_.end(); i++) {
      fp=dlsym(*i,loadername.c_str());
      if (fp!=0) return (*((makerFunc*)fp))();
    }
    return 0;
  }
}
