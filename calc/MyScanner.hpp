#ifndef _MY_SCANNER_HPP_
#define _MY_SCANNER_HPP_

class MyScanner;  // the Parser needs to know there's a class called MyScanner

#include "Parser.hpp"

class MyScanner : public yyFlexLexer
{
public:
    MyScanner(std::istream& arg_yyin, std::ostream& arg_yyout)
        : yyFlexLexer(arg_yyin, arg_yyout) {}
    MyScanner(std::istream* arg_yyin = nullptr, std::ostream* arg_yyout = nullptr)
        : yyFlexLexer(arg_yyin, arg_yyout) {}
    int lex(yy::Parser::semantic_type *yylval); 
};

#endif
