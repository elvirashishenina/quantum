//
//  main.cpp
//  prob6-1
//
// quantum computing &quantum information
//  Created by Elvira on 22/05/2019.
//  Copyright © 2019 Elvira.Shishenina. All rights reserved.
//

#include <iostream>
#include <string>
#include <bitset>
using namespace std;


int main(void)
{
    // insert initial data
    bitset<1> x1(string("1"));
    bitset<1> x2(string("0"));
    bitset<1> x3(string("1"));
    
    cout << "x1 = " << x1 << endl;
    cout << "x2 = " << x2 << endl;
    cout << "x3 = " << x3 << endl;
    
    // compute 3x3 Q-gate
    bitset<1> x1p;
    bitset<1> x2p;
    bitset<1> x3p;
    x1p = x1^x3;
    x2p = x1^x2;
    x3p = (x1 & x2)^(x1 & x3)^(x2 & x3);
    
    cout << "x1p = " << x1 << endl;
    cout << "x2p = " << x2 << endl;
    cout << "x3p = " << x3 << endl;
    
    // compute 3x3 inverted Q-gate
    x1 = (x1p & x2p & (~x3p)) | ((~x1p) & x3p) | ((~x2p) & x3p);
    x2 = ((~x1p) & x2p & (~x3p)) | (x1p & x3p) | ((~x2p) & x3p);
    x3 = (x1p & (~x2p) & (~x3p)) | ((~x1p) & x3p) | (x2p & x3p);
    
    cout << "x1 = " << x1 << endl;
    cout << "x2 = " << x2 << endl;
    cout << "x3 = " << x3 << endl;
    
    return 0;

}
