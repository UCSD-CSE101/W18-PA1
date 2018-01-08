// DO NOT MODIFY
//
// CSE 101 Winter 2018, PA 1

#ifndef __BFS_HPP__
#define __BFS_HPP__

#include "Graph.hpp"

template <class T>
std::set<T> bfs(Graph<T>& g, Vertex<T> * t);

#include "BFS.cpp"
#endif
