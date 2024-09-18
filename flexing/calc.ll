%{
#include <iostream>
using namespace std;
%}

%option c++
%option noyywrap

%%

/* regular expression */      /*action*/
"+"                           {cout <<"a plus sign!!" << endl; return 1;}
"-"                           {cout <<"a minus sign!!" << endl; return 2;} 

%%

int main(int argc, char **argv)
{

}
