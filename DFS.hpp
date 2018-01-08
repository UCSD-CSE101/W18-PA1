// DO NOT MODIFY
//
// CSE 101 Winter 2018, PA 1

#ifndef __DFS_HPP__
#define __DFS_HPP__

#include "Graph.hpp"

template <class T>
std::set<T> dfs(Graph<T>& g, Vertex<T> * t);

#include "DFS.cpp"
#endif
