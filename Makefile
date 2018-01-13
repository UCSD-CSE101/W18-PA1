# CSE 101 PA 1 Makefile
#
# DO NOT MODIFY

CC=g++
FLAGS=-std=c++0x -I./

TEST_DFS = testsrc/TestDFS.cpp DFS.cpp
DFS = DFS.cpp Graph.hpp DFS.hpp
TEST_BFS = testsrc/TestBFS.cpp BFS.cpp
BFS = BFS.cpp Graph.hpp BFS.hpp
TEST_SCC = testsrc/TestSCC.cpp SCC.cpp
SCC = SCC.cpp Graph.hpp SCC.hpp
TEST_TopOrder = testsrc/TestTopOrder.cpp TopOrder.cpp
TopOrder = TopOrder.cpp Graph.hpp TopOrder.hpp
PA_SRCS = $(TEST_DFS) $(DFS) $(TEST_BFS) $(BFS) $(TEST_SCC) $(SCC) $(TEST_TopOrder) $(TopOrder)

BUILD = build

$(BUILD):
	mkdir $(BUILD)

TestDFS : $(BUILD)/DFS.o $(BUILD)/TestDFS.o
	$(CC) $(FLAGS) $^ -o $(BUILD)/$@
$(BUILD)/TestDFS.o : $(TEST_DFS) | $(BUILD)
	$(CC) $(FLAGS) -c $< -o $@
$(BUILD)/DFS.o : $(DFS) | $(BUILD)
	$(CC) $(FLAGS) -c $< -o $@

TestBFS : $(BUILD)/BFS.o $(BUILD)/TestBFS.o
	$(CC) $(FLAGS) $^ -o $(BUILD)/$@
$(BUILD)/TestBFS.o : $(TEST_BFS) | $(BUILD)
	$(CC) $(FLAGS) -c $< -o $@
$(BUILD)/BFS.o : $(BFS) | $(BUILD)
	$(CC) $(FLAGS) -c $< -o $@

TestSCC : $(BUILD)/DFS.o $(BUILD)/SCC.o $(BUILD)/TestSCC.o
	$(CC) $(FLAGS) $^ -o $(BUILD)/$@
$(BUILD)/TestSCC.o : $(TEST_SCC) | $(BUILD)
	$(CC) $(FLAGS) -c $< -o $@
$(BUILD)/SCC.o : $(SCC) | $(BUILD)
	$(CC) $(FLAGS) -c $< -o $@

TestTopOrder : $(BUILD)/TopOrder.o $(BUILD)/TestTopOrder.o
	$(CC) $(FLAGS) $^ -o $(BUILD)/$@
$(BUILD)/TestTopOrder.o : $(TEST_TopOrder) | $(BUILD)
	$(CC) $(FLAGS) -c $< -o $@
$(BUILD)/TopOrder.o : $(TopOrder) | $(BUILD)
	$(CC) $(FLAGS) -c $< -o $@

TestAll: TestDFS TestBFS TestTopOrder TestSCC 

all: TestAll

clean:
	rm -f build

.PHONY: all
