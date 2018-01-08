// Tester for PA1 SCC
// 
// DO NOT MODIFY

#include <list>
#include <set>
#include "TestGraph.hpp"
#include "DFS.hpp"
#include "SCC.hpp"

int main(int argc, char * argv[]) {
    if (argc != 2) {
        std::cerr << "Invalid number of arguments; expecting 1 for file name" << std::endl;
        exit(1);
    }

    std::ifstream input (argv[1], std::ios::in);

    Graph<int> g;
    
    if (!buildGraph(g, input)) {
        std::cerr << "Unable to build graph, please check graph format" << std::endl;
        exit(1);
    }

    std::list<std::set<int> > sccs = scc(g);
    std::cout << "SCC groupings:" << std::endl;
    for(auto it = sccs.begin(); it != sccs.end(); it++){
    	for(auto it_comp = (*it).begin(); it_comp != (*it).end(); it_comp++){
    		std::cout << (*it_comp) << " ";
    	}
    	std::cout << "\n";
    }

    return 0;
}
