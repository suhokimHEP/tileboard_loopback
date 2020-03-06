/* -*- mode: c++ -*- */
#ifndef MENU_HH_INCLUDED
#define MENU_HH_INCLUDED 1

#include <string>
#include <vector>
#include <functional>
#include <string.h>
#include <list>
#include <stdio.h>
#include <stdlib.h>

class BaseMenu {
public:
  static std::string readline(const std::string& prompt) ; 
  static std::string readline(const std::string& prompt, const std::string& defval);
  static std::string readline_nosplit(const std::string& prompt, const std::string& defval);
  static int readline_int(const std::string& prompt) ; 
  static int readline_int(const std::string& prompt, int aval) ; 
  static double readline_float(const std::string& prompt);
  static unsigned int readline_uint(const std::string& prompt,unsigned int aval);
  static bool readline_bool(const std::string& prompt,bool aval);
  static void add_history(const std::string& val);
  static void push_queue(const std::string& text);
  static bool quiet_batch_mode;
  static std::vector<unsigned int> split_uint(const std::string& value);
  static std::vector<int> split_int(const std::string& value);
  static std::vector<uint8_t> split_uint8(const std::string& value);
private:
  static std::string readline(const std::string& prompt, const std::string& defval, bool preserve_last_blank);
  static std::list<std::string> cmdTextQueue;
};

template<class target_T>
class Menu : public BaseMenu {
public:

  
  class Line {
  public:
      Line(const std::string& n, const std::string& d, std::function<void (target_T*)> f, bool hidden=false) : name(n),desc(d),subMenu(0),func(f),func2(0), isNull(false),isHidden(hidden) { }
      Line(const std::string& n, const std::string& d, std::function<void (const std::string&, target_T*)> f2, bool hidden=false) : name(n),desc(d),subMenu(0),func(0),func2(f2), isNull(false),isHidden(hidden) { }
    Line(const std::string& n, const std::string& d, Menu* sb , bool hidden=false) : name(n),desc(d),subMenu(sb), func(0),func2(0), isNull(false),isHidden(hidden) { }
    Line(const std::string& n, const std::string& d, bool hidden=false) : name(n),desc(d),subMenu(0), func(0),func2(0), isNull(false),isHidden(hidden) { }
    Line() : isNull(true) { }
    bool null() const { return isNull; }
    bool hidden() const { return isHidden; }
    void hide() { isHidden=true; }
    const std::string name;
    const std::string desc;
    Menu* subMenu;
    std::function<void(target_T*)> func;
    std::function<void(const std::string&, target_T*)> func2;

  private:
    bool isNull;
    bool isHidden;
  };
  
  Menu(void (*renderf)( target_T* target ), const Line* tlines) : renderFunc(renderf) { 
    for (size_t i=0; !tlines[i].null(); i++) lines.push_back(tlines[i]);
  }
  
  Menu(const Line* tlines) : renderFunc(0) {
    for (size_t i=0; !tlines[i].null(); i++) lines.push_back(tlines[i]);
  }
  
  void addLine(const Line& line) { lines.push_back(line); }
  
  void (*renderFunc)( target_T* target );
  
  std::vector<Line> lines;
  
  void steer( target_T* target  ) ;
};

template<class target_T>
void Menu<target_T>::steer( target_T* target ) 
{
  
    const Line* theMatch=0;
    do
    {
        printf("\n");
        if (renderFunc!=0) 
        {
            this->renderFunc( target ) ;
        }
        if (!quiet_batch_mode)
        {
            for (size_t i=0; i<lines.size(); i++) 
            {
                if (lines[i].hidden()) continue;
                printf("   %-12s %s\n",lines[i].name.c_str(),lines[i].desc.c_str());	       
            }
        }
        std::string request=readline(" > ");
        theMatch=0;
        // check for a unique match...
        int nmatch=0;
        for (size_t i=0; i<lines.size(); i++) 
        {
            if (strncasecmp(request.c_str(),lines[i].name.c_str(),request.length())==0) {
                theMatch=&(lines[i]);
                nmatch++;
            }
        }
        if (nmatch>1) theMatch=0;
        // ok
        if (theMatch==0)
        {
            if (!request.empty()) printf("  Command '%s' not understood.\n\n",request.c_str());
        }
        else add_history(theMatch->name);
        // actions
        if (theMatch!=0 && theMatch->subMenu!=0)          theMatch->subMenu->steer( target );
        else if (theMatch!=0 && theMatch->func!=0 )       theMatch->func( target ) ;
        else if (theMatch!=0 && theMatch->func2!=0 )       theMatch->func2( theMatch->name, target ) ;
    
    } 
    while (theMatch==0 || theMatch->subMenu!=0 || (theMatch->func!=0 || theMatch->func2 !=0) );
}

#endif // MENU_HH_INCLUDED
