// DO NOT MODIFY
//
// CSE 101 Winter 2018, PA 1

#ifndef __GRAPH_HPP__
#define __GRAPH_HPP__

#include <list>
#include <map>

template <class T>
class Vertex {
public:
    Vertex(){};
    Vertex(T id){
        this->id = id;
        this->visited = false;
    };
    
    T id;
    int pre;
    int post;
    bool visited;
    std::list<T> edges;
};

template <class T>
class Graph {
public:
    std::map<T, Vertex<T> *> vertices;
};

#endif
