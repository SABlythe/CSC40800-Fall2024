#include <FlexLexer.h>
#include <iostream>

using namespace std;

int main(int argc, char **argv)
{
  yyFlexLexer scanner;

  int returnCode =  scanner.yylex();

  while(returnCode)
    {
      cout << "returnCode=" << returnCode << endl;
      returnCode =  scanner.yylex();
    }
  return 0;
}
