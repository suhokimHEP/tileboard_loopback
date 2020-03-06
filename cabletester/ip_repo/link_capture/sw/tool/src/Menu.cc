#include "Menu.hh"
#include <readline/readline.h>
#include <readline/history.h>

std::list<std::string> BaseMenu::cmdTextQueue;
bool BaseMenu::quiet_batch_mode=false;

//**tool_readline functions
//helper functions for Menu to handle user input
//works for _float and _int. Parameters (prompt, defval={"",0} , bool preserve_last_blank = false)
//overloaded so you can leave out the last param or last 2 params

/*
static void write_buffer_to_file(std::vector<uint32_t>& buffer) {
  std::string of=BaseMenu::readline("Save to filename (blank for no save) : ");
  if (!of.empty()) {
    FILE* f=fopen(of.c_str(),"wt");
    if (f==0) printf("Unable to open '%s' for writing\n\n",of.c_str());
    else {
      for (size_t i=0; i<buffer.size(); i++) {
	fprintf(f,"%5d %08x\n",int(i),buffer[i]);
      }
      fclose(f);
    }
  }
}
*/

static std::string readline_stuff_buffer;

static int set_deftext ()
{
  if (!readline_stuff_buffer.empty())
    {
      /* Apparently the "current cursor position" in which text is inserted
         is 0, when initially called */
      rl_insert_text (readline_stuff_buffer.c_str());
      readline_stuff_buffer.clear();

    }
  return 0;
}

std::string BaseMenu::readline(const std::string& prompt, const std::string& defval, bool preserve_last_blank) {
  std::string retval;
  std::string trueprompt(prompt);
  if (!defval.empty()) trueprompt+=" ["+defval+"] ";


  if (!cmdTextQueue.empty()) {
    retval=cmdTextQueue.front();
    printf("%s %s\n",trueprompt.c_str(),retval.c_str());

    if (!retval.empty() && retval[0]=='~') {
      retval.erase(0,1);
      retval.insert(0,getenv("HOME"));
    }
    cmdTextQueue.pop_front();
  } else {
    if (!readline_stuff_buffer.empty()) {
      rl_startup_hook = set_deftext;
    } else {
      rl_startup_hook = 0;
    }
    char* res=::readline(trueprompt.c_str());
    retval=std::string(res);
    free(res);
    if (retval.empty()) retval=defval;
    else if (!preserve_last_blank && isspace(retval[retval.size()-1])) retval.erase(retval.size()-1);

    if (!retval.empty() && retval[0]=='~') {
      retval.erase(0,1);
      retval.insert(0,getenv("HOME"));
    }

    std::string rvwork;
    bool lastWasWhite=true;
    for (size_t i=0; i<retval.size(); i++) {
      if (isspace(retval[i])) {
	if (!lastWasWhite) {
	  cmdTextQueue.push_back(rvwork);
	  rvwork="";
	}
	lastWasWhite=true;
      } else {
	rvwork+=retval[i];
	lastWasWhite=false;
      }
    }
    if (!rvwork.empty()) cmdTextQueue.push_back(rvwork);
    if (!cmdTextQueue.empty()) {
      retval=cmdTextQueue.front();
      cmdTextQueue.pop_front();
    }
  }
  return retval;
}


std::string BaseMenu::readline_nosplit(const std::string& prompt, const std::string& defval) {
  std::string retval;
  std::string trueprompt(prompt);
  if (!defval.empty()) trueprompt+=" ["+defval+"] ";


  char* res=::readline(trueprompt.c_str());
  retval=std::string(res);
  free(res);

  if (retval.empty()) retval=defval;
  else if (isspace(retval[retval.size()-1])) retval.erase(retval.size()-1);

  return retval;
}


std::string BaseMenu::readline(const std::string& prompt, const std::string& defval) { return BaseMenu::readline(prompt,defval,false); }
std::string BaseMenu::readline(const std::string& prompt) { return BaseMenu::readline(prompt,"",false); }

int BaseMenu::readline_int(const std::string& prompt) {
  return strtol(BaseMenu::readline(prompt).c_str(),0,0);
}

double BaseMenu::readline_float(const std::string& prompt) {
  return atof(BaseMenu::readline(prompt).c_str());
}

int BaseMenu::readline_int(const std::string& prompt,int aval) {
  char buffer[50];
  sprintf(buffer,"%d",aval);
  return strtol(BaseMenu::readline(prompt,buffer).c_str(),0,0);
}

unsigned int BaseMenu::readline_uint(const std::string& prompt,unsigned int aval) {
  char buffer[50];
  sprintf(buffer,"0x%x",aval);
  readline_stuff_buffer=buffer;
  return strtol(BaseMenu::readline(prompt,buffer).c_str(),0,0);
}

bool BaseMenu::readline_bool(const std::string& prompt,bool aval) {
  char buffer[50];
  if (aval) sprintf(buffer,"Y");
  else sprintf(buffer,"N");
  std::string rv=BaseMenu::readline(prompt+" (Y/N) ",buffer);
  return (rv.find_first_of("yY1tT")!=std::string::npos);
}

void BaseMenu::add_history(const std::string& val) {
  ::add_history(val.c_str());
}
void BaseMenu::push_queue(const std::string& text) {
  cmdTextQueue.push_back(text);
}


std::vector<unsigned int> BaseMenu::split_uint(const std::string& value) {
  std::vector<unsigned int> rv;
  size_t i,j;

  for (i=0; i<value.size(); i++) {
    while (i<value.size() && (isspace(value[i])||value[i]==',')) i++;
    if (i==value.size()) break;
    for (j=i+1; j<value.size() && !isspace(value[j]) && value[j]!=','; j++);
    std::string piece=value.substr(i,j-i);
    rv.push_back(strtoul(piece.c_str(),0,0));
    //    printf("'%d 0x%x'\n",rv.back(),rv.back());
    i=j;
  }

  return rv;
}

std::vector<uint8_t> BaseMenu::split_uint8(const std::string& value) {
  std::vector<uint8_t> rv;
  size_t i,j;

  for (i=0; i<value.size(); i++) {
    while (i<value.size() && (isspace(value[i])||value[i]==',')) i++;
    if (i==value.size()) break;
    for (j=i+1; j<value.size() && !isspace(value[j]) && value[j]!=','; j++);
    std::string piece=value.substr(i,j-i);
    rv.push_back(static_cast<uint8_t>(strtoul(piece.c_str(),0,0)));
    //    printf("'%d 0x%x'\n",rv.back(),rv.back());
    i=j;
  }

  return rv;
}

std::vector<int> BaseMenu::split_int(const std::string& value) {
  std::vector<int> rv;
  size_t i,j;

  for (i=0; i<value.size(); i++) {
    while (i<value.size() && (isspace(value[i])||value[i]==',')) i++;
    if (i==value.size()) break;
    for (j=i+1; j<value.size() && !isspace(value[j]) && value[j]!=','; j++);
    std::string piece=value.substr(i,j-i);
    rv.push_back(strtol(piece.c_str(),0,0));
    //    printf("'%d 0x%x'\n",rv.back(),rv.back());
    i=j;
  }

  return rv;
}
