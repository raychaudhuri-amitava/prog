#ifndef __POLYNOMIAL_TERM_HPP__
#define __POLYNOMIAL_TERM_HPP__

#include<iostream>
#include<ios>

template<typename TE, typename TC>
class PolynomialTerm {
    private:
    TE e; //exponent
    TC c; //coefficient
    public:
    PolynomialTerm() : e(TE()), c(TC()){}
    PolynomialTerm(PolynomialTerm const& poly) : e(poly.e), c(poly.c){}
    PolynomialTerm(TE re, TC rc) : e(re), c(rc){}
    ~PolynomialTerm() {}
    TE exp() const {return e;}
    TC coeff() const {return c;}
    void set(TE const& e, TC const& c) {this->e = e; this->c = c;}
    TC eval(TC xval) {return c*((xval)^e);}
    PolynomialTerm operator*(PolynomialTerm const& rhs) const {
        return PolynomialTerm(rhs.e + e, rhs.c * c);
    }
    PolynomialTerm operator+(PolynomialTerm const& rhs) const {
        return PolynomialTerm(e==rhs.e?e:0, c + rhs.c);
    }
    bool operator<(PolynomialTerm const& rhs) const { return e < rhs.e;}    
};

template<typename TE, typename TC>
std::ostream &operator<<(std::ostream &out, PolynomialTerm<TE, TC> const& term) {
    if(term.coeff() != TC(0)) {
        out<<"+"<<std::fixed<<term.coeff();
        if(term.exp() != 0) {
            out<<"x^"<<term.exp();
        }
    }
    return out;
}

template<typename TE, typename TC>
std::istream &operator>>(std::istream &in, PolynomialTerm<TE, TC>& term) {
    TE e(0);
    TC c(0);
    if(!in.eof()) in>>e;
    if(!in.eof()) in>>c;
    term.set(e, c);
    return in;
}


#endif //__POLYNOMIAL_TERM_HPP__
