#ifndef hgcsca_HDLCFactory_hh_included
#define hgcsca_HDLCFactory_hh_included 1

#include <string>
#include <vector>

namespace hgcsca {

  class HDLC;
  
  /** \class Virtual interface which defines the minimal pathway for
  talking to a GBTSCA over the HDLC protocol.
  */
  class HDLCFactory {
  public:
    static HDLC* construct(const std::string& uri);
    static bool registerPluginLibrary(const std::string& file);

  private:
    static std::vector<void*> plugins_;
  };
  
}

#endif // hgcsca_HDLCFactory_hh_included
