// Tester for PA1 DFS
//
// DO NOT MODIFY

#include <set>

#include "TestGraph.hpp"
#include "DFS.hpp"

int main(int argc, char * argv[]) {
    if (argc != 2) {
        std::cerr << "Invalid number of arguments; expecting 1 for file name" << std::endl;
        exit(1);
    }

    std::ifstream input (argv[1], std::ios::in);

    // grab the target vertex
    int vertex;
    std::string vString;
    if (getline(input, vString)) {
        std::stringstream vStream(vString);
        vStream >> vertex; 
    }
    else {
        std::cerr << "Unable to open file '" << argv[1] << "'" << std::endl;
    }

    Graph<int> g;
    
    if (!buildGraph(g, input)) {
        std::cerr << "Unable to build graph, please check graph format" << std::endl;
        exit(1);
    }

    std::set<int> result = dfs(g, vertex);
    std::cout << "Result of DFS: [ ";
    for(auto it = result.begin(); it != result.end(); it++){
        std::cout << *it << " ";
    }
    std::cout << "]" << std::endl;

    return 0;
}
