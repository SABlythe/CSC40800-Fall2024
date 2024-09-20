%{
#include <iostream>
using namespace std;
%}

%option c++
%option noyywrap

DIGIT     [0-9]
NZDIGIT   [1-9]
WSPACE    [\ \t\n]
%%

"0"                           {cout <<"an integer number!!" << endl; return 4;}
"+"                           {cout <<"a plus sign!!" << endl; return 1;}
"-"                           {cout <<"a minus sign!!" << endl; return 2;} 
{NZDIGIT}{DIGIT}*             {cout <<"an integer number!!" << endl; return 4;}
"="                           {cout <<"an equals sign!!" << endl; return 5;}

{WSPACE}+                     {}
.                             {cout <<" UNKNOWN <" << yytext[0] << ">" << endl;
                               return 99;}

%%

/*
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
*/
