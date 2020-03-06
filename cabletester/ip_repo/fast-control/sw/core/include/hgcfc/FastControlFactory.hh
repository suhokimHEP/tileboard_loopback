#ifndef hgcfc_FastControlFactory_hh_included
#define hgcfc_FastControlFactory_hh_included 1

#include <string>
#include <vector>

namespace hgcfc {

  class FastControl;
  
  /** \class Factory for FastControl classes.
  */
  class FastControlFactory {
  public:
    static FastControl* construct(const std::string& uri);
    static bool registerPluginLibrary(const std::string& file);

  private:
    static std::vector<void*> plugins_;
  };
  
}

#endif // hgcfc_FastControlFactory_hh_included
