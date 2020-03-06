#ifndef hgcfc_Exception_hh_included
#define hgcfc_Exception_hh_included 1

#include <exception>
#include <string>

#define HGCFC_RAISE( EXCEPTION, MSG ) \
throw EXCEPTION( #EXCEPTION, MSG, __FILE__, __LINE__, __FUNCTION__)

#define HGCFC_RAISE_SIMPLE( EXCEPTION ) \
throw EXCEPTION( #EXCEPTION, #EXCEPTION, __FILE__, __LINE__, __FUNCTION__)

namespace hgcfc {

  /** Exception base class for HGCFC */
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

}



#endif // hgcfc_Exception_hh_included
