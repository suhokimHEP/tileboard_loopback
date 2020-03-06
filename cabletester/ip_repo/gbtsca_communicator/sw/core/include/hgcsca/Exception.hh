#ifndef hgcsca_Exception_hh_included
#define hgcsca_Exception_hh_included 1

#include <exception>
#include <string>

#define HGCSCA_RAISE( EXCEPTION, MSG ) \
throw EXCEPTION( #EXCEPTION, MSG, __FILE__, __LINE__, __FUNCTION__)

#define HGCSCA_RAISE_SIMPLE( EXCEPTION ) \
throw EXCEPTION( #EXCEPTION, #EXCEPTION, __FILE__, __LINE__, __FUNCTION__)

namespace hgcsca {

  /** Exception base class for HGCSCA */
  class Exception : public std::exception {
  public:
    Exception(const std::string& name, const std::string& message, const std::string& module, int line, const std::string& function );
    virtual ~Exception() throw() { }
    std::string name() const { return m_name; }
    std::string message() const { return m_message; }
    std::string file() const { return m_file; }
    int line() const { return m_line; }
    virtual const char* what() const _GLIBCXX_USE_NOEXCEPT { return m_what.c_str(); }
  private:
    std::string m_name, m_message, m_file, m_function;
    int m_line;
    std::string m_what;
  };

  class ChannelDisabledException : public Exception {
  public:
    ChannelDisabledException(const std::string& name, const std::string& message, const std::string& module, int line, const std::string& function ) : Exception(name,message,module,line,function) { }
  };

  class ChannelBusyException : public Exception {
  public:
    ChannelBusyException(const std::string& name, const std::string& message, const std::string& module, int line, const std::string& function ) : Exception(name,message,module,line,function) { }
  };

  class InvalidChannelException : public Exception {
  public:
    InvalidChannelException(const std::string& name, const std::string& message, const std::string& module, int line, const std::string& function ) : Exception(name,message,module,line,function) { }
  };

  class InvalidCommandException : public Exception {
  public:
    InvalidCommandException(const std::string& name, const std::string& message, const std::string& module, int line, const std::string& function ) : Exception(name,message,module,line,function) { }
  };
  
  
}



#endif // hgcsca_HDLC_hh_included
