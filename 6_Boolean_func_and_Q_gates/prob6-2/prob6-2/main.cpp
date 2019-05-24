//
//  main.cpp
//  prob6-2
//
//  boolean functions & quantum gates
//  Created by Elvira on 23/05/2019.
//  Copyright © 2019 Elvira.Shishenina. All rights reserved.
//

#include <iostream>
#include <bitset>
#include <list>
#include <map>
#include <vector>
#include "symbolicc++.h"
using namespace std;

const int n=3;

// a class to prove ordering of bitset
// so that they can be used  in maps

template  <const  size_t n>  class  cmpbst
{
public:
    bool operator()(const bitset<n> &b1,const bitset<n> &b2)
    {
        size_t i;
        for(i=0;i<n;++i) if (b1[i] !=b2[i]) return (b1[i] !=b2[i]);
        return false;
    }
};

// for a given reversible boolean map, find the corresponding
// permutation matrix

template <const size_t n>
Symbolic permutation(const map<bitset<n>, <bitset<n>, cmpbst<n> > &m)
{
    unsigned int N = (1 << n);
    Symbolic P = Symbolic("P",N,N)*0;
    typename map<bitset<n>,  bitset<n> >::const_iterator i;
    for (i=m.begin(); i!=m.end(); ++i)
        P(i->second.to_ulong(), i->first.to_ulong()) = 1;
    return P;
}

// simplifies a sum of products form using resolution the
// products are represented by bitsets and the sum is the
// list of bitsets


