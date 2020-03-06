#include "hgcsca/HDLC.hh"
#include "hgcsca/Exception.hh"

namespace hgcsca {


HDLC::Response::Response(HDLC* owner, uint8_t len, uint8_t errstatus, uint32_t data) : m_data(data),m_len(len),m_errstatus(errstatus),m_owner(owner) {
  if (owner->suppressExceptions()) return;
  
  if (m_errstatus&0x20) {
    HGCSCA_RAISE_SIMPLE(ChannelDisabledException);
  }

  if (m_errstatus&0x40) {
    HGCSCA_RAISE_SIMPLE(ChannelBusyException);
  }

  if (m_errstatus&0x2) {
    HGCSCA_RAISE_SIMPLE(InvalidChannelException);
  }

  if (m_errstatus&0x4) {
    HGCSCA_RAISE_SIMPLE(InvalidCommandException);
  }
  
}

}
