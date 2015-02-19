#ifndef __NUMBER_HPP
#define __NUMBER_HPP

#include<stdint.h>
#include<vector>
#include<string>
#include<ostream>
#include<istream>

using std::vector;
using std::string;

enum sentinels {
    INTEGRAL_PREC = 0,
    BASE = 10,
    DEFAULT_PREC = 20,
    MAX_PREC = 0xFFFFFFFF
};

class number {
public:
    typedef uint32_t numtype;
    static void initNumberEngine(uint32_t prc = DEFAULT_PREC);
    template<typename BinaryPredicate>
    static bool op(const numtype &lhs, const numtype &rhs, BinaryPredicate pred, bool &eq);
    static uint32_t getThisVal(const numtype &nm, size_t &sbi);
    static void setThisVal(numtype &nm, uint32_t val, size_t &sbi);
    static uint32_t getThisValRev(const numtype &nm, size_t &sbi);
    static void setThisValRev(numtype &nm, uint32_t val, size_t &sbi);
    
//statics
private:
    static uint32_t prec; // only applicable for calculation. Not for output, input etc. Applicable for division.
    static const size_t MAXNUM = 2*sizeof(numtype); //always a power of 2. 
    static const uint32_t allDigits[BASE + 2];
    static const uint32_t complement[BASE];
    static const uint32_t masks[MAXNUM];
    static const uint32_t maskShift[MAXNUM];
    static const uint8_t powerShift[65];
//non statics
private:
    vector<numtype> _num; // stored in reverse order. 2376159.00828323 is stored as 9516732
    vector<numtype> _frac; // stored in the reverse order. 2376159.0028323 is stored as 3238200
    bool _sign; //false is -ive and true is +ive.
    size_t _nums;
    size_t _fracs;
public:
    number():_sign(true),_nums(0),_fracs(0){}
    explicit number(const char* num);
    explicit number(const string &num);
    explicit number(uint64_t num);
    explicit number(uint32_t num);
    explicit number(int64_t num);
    explicit number(int32_t num);
    number(const number& num);
    ~number();
    //operators
    //unary
    number operator+() const;
    number operator-() const;
    number& operator++();
    number& operator--();
    number& operator++(int dummy);
    number& operator--(int dummy);
    //bool cast
    operator bool() const; //true if positive else false.
    //assignment
    number &operator=(const number &rhs);
    number &operator=(uint64_t u64);
    number &operator=(uint32_t u32);
    number &operator=(int64_t i64);
    number &operator=(int32_t i32);
    number &operator=(const string& num);
    number &operator=(const char* num);
    //binary ops
    number operator%(const number &rhs) const;
    number &operator%=(const number &rhs);
    number operator*(const number &rhs) const;
    number &operator*=(const number &rhs);
    number operator+(const number &rhs) const;
    number &operator+=(const number &rhs);
    number operator-(const number &rhs) const;
    number &operator-=(const number &rhs);
    number operator/(const number &rhs) const;
    number &operator/=(const number &rhs);
    number operator^(const number &rhs) const; //power
    number &operator^=(const number &rhs); //power
    //comparison ops
    bool operator!=(const number &rhs) const;
    bool operator<(const number &rhs) const;
    bool operator<=(const number &rhs) const;
    bool operator==(const number &rhs) const;
    bool operator>(const number &rhs) const;
    bool operator>=(const number &rhs) const;
    //input and output.
    friend std::ostream& operator<<(std::ostream &out, const number &numb);
    friend std::istream& operator>>(std::istream &in, number &numb);
private:
    //classes with inline () operator.
    class num_less {
        public:
            bool operator()(number::numtype lhs, number::numtype rhs);
    };

    class num_less_equal {
        public:
            bool operator()(number::numtype lhs, number::numtype rhs);
    };

    class num_greater {
        public:
            bool operator()(number::numtype lhs, number::numtype rhs);
    };

    class num_greater_equal {
        public:
            bool operator()(number::numtype lhs, number::numtype rhs);
    };

    class _omega {
        //represent coef*_omega(k,2^n).
        private:
            uint64_t coef;
            uint64_t k;
            uint64_t n; //this is the power of 2.
        public:
            explicit _omega(uint64_t coeff = 1, uint64_t kk = 0, uint64_t nn = 1):coef(coeff), k(kk), n(nn){}
            explicit _omega(const _omega& rhs):coef(rhs.coef), k(rhs.k), n(rhs.n){}
            _omega &operator=(const _omega &rhs) {
                if(&rhs != this) {
                    coef == rhs.coef; k = rhs.k; n = rhs.n;
                }
                return * this;
            }
            _omega operator*(const number &rhs) const {
                uint64_t g = 1;
                if(rhs.n != n) {
                    g = gcd(k*rhs.n + rhs.k*n, n * rhs.n);
                }
                return  _omega(coef*rhs.coeff, 
                        (rhs.n != n) ? ((k*rhs.n + rhs.k*n)/g) : ((k + rhs.k)%n), 
                        (rsh.n != n) ? ((n * rhs.n)/g) : n);
            }
            _omega &operator*=(const number &rhs) {
                if(&rhs != this) {
                    coef*=rhs.coef;
                    k = (n != rhs.n) ? (k*rhs.n + rhs.k*n) : ((k + rhs.k)%n);
                    if(n!=rhs.n) {
                        n*=rhs.n; //now change n.
                        uint64_t g = gcd(k, n);
                        k/=g;
                        n/=g;
                    }
                }
                return *this;
            }
            _omega operator*(uint64_t rhs) const {
                return _omega(coef*rhs, k, n);
            }
            _omega &operator*=(uint64_t rhs) {
                coef*=rhs;
                return *this;
            }
        private:
            uint64_t gcd(uint64_t a, uint64_t b) {
                if(a < b) {
                    uint64_t tmp = a;
                    a = b;
                    b = a;
                }
                while(b != 0) {
                    uint64_t md = a % b;
                    a = b;
                    b = md;
                }
                return a;
            }
    };

protected:
    void setFromStr(const string& str);
    template<typename T>
    void toString(const T& val);
    void sameSignAdd(const number &rhs, number & ans) const; // same as diffSignSub.
    void diffSignAdd(const number &rhs, number & ans) const; // same as sameSignSub.
    void trimNums(void);
};

#include "number.ipp" //This is for inlined functions.

#endif //__NUMBER_HPP
