#include "MyMemory.hpp"

#include <map>
#include <string>

using namespace std;

map<string, double>  memory;


double lookupValue(std::string &varName)
{
  return memory[varName]; 
}

void storeValue(std::string &varName, double value)
{
   memory[varName] = value;
}
