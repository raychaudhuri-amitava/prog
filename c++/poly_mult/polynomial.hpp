#ifndef __POLYNOMIAL_HPP__
#define __POLYNOMIAL_HPP__

#include<sstream>
#include<iostream>
#include<vector>
#include<algorithm>
#include<complex>
#include "polynomial_term.hpp"

class Polynomial {
    private:
    typedef PolynomialTerm<double, std::complex<double> > PolyTermType;
    typedef std::vector<PolyTermType> PolyType;
    PolyType poly;
    public:
    Polynomial() {}
    Polynomial(Polynomial const& a) : poly(a.poly){}
    ~Polynomial() {}

    void reduce() {
        std::sort(poly.begin(), poly.end());
        PolyType tmp;
        PolyType::iterator it1 = poly.begin();
        PolyType::iterator it = poly.begin();
        ++it;
        for(; it != poly.end(); ++it) {
            if(it->exp() == it1->exp()) {
                *it1 = *it1 + (*it);
            } else {
                tmp.push_back(*it1);
                it1 = it;
            }
        }
        tmp.push_back(*it1);
        if(tmp.size() != 0) {
            poly.swap(tmp);
        }
    } 

    void write(std::ostream &out) const {
        for(PolyType::const_iterator it = poly.begin(); it != poly.end(); ++it) {
            out<<*it;
        }
    }

    void read(std::istream &in) {
        std::string ln("");        
        std::istringstream strm("");
        std::getline(in, ln);
        strm.str(ln);
        PolyTermType pt;
        while(!strm.eof()) { 
            strm>>pt;
            poly.push_back(pt);
        }
        reduce();
    }

    Polynomial operator*(Polynomial const& rhs) const {
        Polynomial rt;
        for(PolyType::const_iterator it = poly.begin(); it != poly.end(); ++it) {
            for(PolyType::const_iterator rit = rhs.poly.begin(); rit != rhs.poly.end(); ++rit) {
                rt.poly.push_back((*it) * (*rit));
            }
        }
        rt.reduce();
        return rt;
    }

    Polynomial & operator=(Polynomial const& rhs) {
        if(this != &rhs) {
            poly.clear();
            poly = rhs.poly;
        }
        return *this;
    }

    size_t size() {return poly.size();}

};

std::ostream &operator<<(std::ostream &out, Polynomial const& poly);

std::istream &operator>>(std::istream &in, Polynomial & poly);

#endif //__POLYNOMIAL_HPP__
