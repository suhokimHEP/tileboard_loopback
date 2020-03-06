#ifndef linkcapture_LinkCaptureFactory_hh_included
#define linkcapture_LinkCaptureFactory_hh_included 1

#include <string>
#include <vector>

namespace linkcapture {

  class LinkCapture;
  
  /** \class Factory for XilAxiI2 classes.
  */
  class LinkCaptureFactory {
  public:
    static LinkCapture* construct(const std::string& uri);
    static bool registerPluginLibrary(const std::string& file);

  private:
    static std::vector<void*> plugins_;
  };
  
}

#endif // hgcfc_FastControlFactory_hh_included
