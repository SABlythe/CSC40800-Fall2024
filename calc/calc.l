%{
#include <iostream>
#include "MyScanner.hpp"
#include "Parser.hpp"
#define YY_DECL int MyScanner::lex(Parser::semantic_type *yylval)


using namespace yy;
using namespace std;
%}

%option c++ noyywrap yylineno
%option outfile="MyScanner.cpp"
%option nounistd

DIGIT   [0-9]
ALPHA   [A-Za-z]
WSPACE  [\ \t\n]
%%

{ALPHA}({ALPHA}|{DIGIT})*  {
             yylval->sval=YYText(); 
             return Parser::token::ID_T;} 


{DIGIT}+  { 
            int x = stoi(YYText());
            yylval->ival=x; 
            return Parser::token::NUM_INT_T;}

{DIGIT}+\.{DIGIT}+ {
            double x = stod(YYText());
            yylval->dval=x; 
            return Parser::token::NUM_REAL_T;}

"+"|"-"  {yylval->sval = YYText(); return Parser::token::ADDOP_T;}
"*"|"/"  {yylval->sval = YYText(); return Parser::token::MULOP_T;}
"=" {return Parser::token::ASSIGNOP_T;}
";" {return Parser::token::SEMICOLON_T;}
"(" {return Parser::token::LPAREN_T;}
")" {return Parser::token::RPAREN_T;}


{WSPACE}+        { /* just skip, do nothing else */}

#.*\n		 { /* a comment ... ignore */ }



.		 { std::cerr << "UNMATCHED CHARACTER: '" << yytext[0]
		        << "' on line " << yylineno << std::endl;}
%%
//<<EOF>>          { return Parser::token::T_EOFTOK;}
