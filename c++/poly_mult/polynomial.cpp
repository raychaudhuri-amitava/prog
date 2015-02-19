#include"polynomial.hpp"

#include<iostream>

using namespace std;

ostream &operator<<(ostream &out, Polynomial const& poly) {
    poly.write(out);
    return out;
}

istream &operator>>(istream &in, Polynomial & poly) {
    poly.read(in);
    return in;
}

