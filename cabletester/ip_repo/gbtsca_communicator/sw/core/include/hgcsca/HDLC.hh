#ifndef hgcsca_HDLC_hh_included
#define hgcsca_HDLC_hh_included 1

#include <stdint.h>
#include <string>
#include <stdio.h>
#include <cstdlib>

namespace hgcsca {

  /** \class Virtual interface which defines the minimal pathway for
  talking to a GBTSCA over the HDLC protocol.
  */
  class HDLC {
  public:
    class Response {
    public:
      // Automatically raises exceptions for bad error status
      Response(HDLC* owner, uint8_t len, uint8_t errstatus, uint32_t data);
      //
      uint32_t data() const { return m_data; }
      uint8_t len() const { return m_len; }
      uint8_t error() const { return m_errstatus; }
    private:
      uint32_t m_data;
      uint8_t m_len;
      uint8_t m_errstatus;
      HDLC* m_owner;
    };

    HDLC() : suppressExceptions_(false) { }
    
    /** optional configuration step, using a URI */
    virtual void configure(const std::string& uri) { }
    
    /** generate an SCA request*/
    virtual Response requestSync(uint8_t channel, uint8_t reg, uint8_t len, uint32_t data) = 0;
    /** generate an Chip reset*/
    virtual bool reset() = 0;
    /** generate an HDLC reset*/
    virtual bool resetHDLC() = 0;

    /** suppress exceptions? */
    void setExceptionSuppress(bool yes) { suppressExceptions_=yes; }

    bool suppressExceptions() const { return suppressExceptions_; }
    
  private:
    bool suppressExceptions_;
  };
  
}

#define IMPLEMENT_HDLC_LOADER(CLASS,NAME) extern "C" { hgcsca::HDLC* hgcsca_hdlc_make_ ## NAME () { return new CLASS (); } }

#endif // hgcsca_HDLC_hh_included
