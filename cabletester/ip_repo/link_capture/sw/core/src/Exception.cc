#include "linkcapture/Exception.hh"
#include <stdio.h>

namespace linkcapture { 
  Exception::Exception(const std::string& name, const std::string& message, const std::string& module, int line, const std::string& function ) : m_name(name),
																		 m_message(message),
																		 m_file(module),
																		 m_function(function),
																		 m_line(line) {
    char buf[16];
    snprintf(buf,16,"%d",line);
    m_what=m_name+" : "+m_message+" ("+m_file+":"+buf+")";    
  }
  
}
