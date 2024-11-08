#include <iostream>

#include <FlexLexer.h>

#include "MyScanner.hpp"
#include "Parser.hpp"

using namespace yy;
using namespace std;

int yyFlexLexer::yylex() {
    // this call should never happen, but flex/bison requires its implementation
    throw std::runtime_error("Bad call to yyFlexLexer::yylex()");
}

int main(int agrc, char *argv[]) {
    MyScanner scanner{ cin, cerr };
    Parser parser{ &scanner };
    parser.parse();
}
