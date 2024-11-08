CC = g++ -c -Wall -ansi -pedantic -std=c++20 
LN = g++

mycalc: main.o Parser.o MyScanner.o MyMemory.o
	$(LN) -o mycalc main.o Parser.o MyScanner.o MyMemory.o

main.o: main.cpp Parser.hpp MyScanner.hpp
	$(CC) main.cpp

Parser.o: Parser.cpp Parser.hpp MyScanner.hpp
	$(CC) Parser.cpp

MyScanner.o: MyScanner.cpp Parser.hpp MyScanner.hpp
	$(CC) MyScanner.cpp

MyScanner.cpp: calc.l MyScanner.hpp
	flex++ calc.l

Parser.hpp: calc.bis MyScanner.hpp
	bison calc.bis

Parser.cpp: calc.bis MyScanner.hpp
	bison calc.bis

MyMemory.o: MyMemory.cpp MyMemory.hpp
	$(CC) MyMemory.cpp

clean:
	/bin/rm -f *~ *.o mycalc Parser.cpp Parser.hpp MyScanner.cpp
