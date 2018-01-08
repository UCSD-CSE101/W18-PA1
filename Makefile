# CSE 101 PA 1 Makefile
#
# DO NOT MODIFY

CC=g++
FLAGS=-std=c++0x -I./

HEADERS=$(wildcard *.hpp)
SOURCES=$(wildcard *.cpp)
OBJECTS=$(SOURCES:.cpp=.o)

TestDFS.o: testsrc/TestDFS.cpp $(HEADERS)
	$(CC) -I testsrc/ $(FLAGS) -g -c testsrc/TestDFS.cpp

TestBFS.o: testsrc/TestBFS.cpp $(HEADERS)
	$(CC) -I testsrc/ $(FLAGS) -g -c testsrc/TestBFS.cpp

TestSCC.o: testsrc/TestSCC.cpp $(HEADERS)
	$(CC) -I testsrc/ $(FLAGS) -g -c testsrc/TestSCC.cpp

TestTopOrder.o: testsrc/TestTopOrder.cpp $(HEADERS)
	$(CC) -I testsrc/ $(FLAGS) -g -c testsrc/TestTopOrder.cpp

TestDFS: TestDFS.o DFS.o
	$(CC) $(FLAGS) -g -o TestDFS.out TestDFS.o DFS.o

TestBFS: TestBFS.o BFS.o
	$(CC) $(FLAGS) -g -o TestBFS.out TestBFS.o BFS.o

TestSCC: TestSCC.o SCC.o
	$(CC) $(FLAGS) -g -o TestSCC.out TestSCC.o SCC.o

TestTopOrder: TestTopOrder.o TopOrder.o
	$(CC) $(FLAGS) -g -o TestTopOrder.out TestTopOrder.o TopOrder.o

TestAll: TestDFS TestBFS TestTopOrder TestSCC 

%.o: %.cpp
	$(CC) $(FLAGS) -g -c -o $@ $<

clean:
	rm -f *.o
	rm -f *.out
