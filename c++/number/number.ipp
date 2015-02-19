#ifndef __NUMBER_IPP
#define __NUMBER_IPP

#include<functional>
#include<sstream>

//private static funcs.
inline void number::initNumberEngine(uint32_t prc) {
    number::prec = prc; //once set will be used.
}

template<typename BinaryPredicate>
inline bool number::op(const numtype &lhs, const numtype &rhs, BinaryPredicate pred, bool &eq) {
    //thread safe static const function.
    eq = false;
    for(size_t sbi = 0; sbi < MAXNUM; ++sbi) {
        uint8_t lhsval =  static_cast<uint8_t>((lhs&masks[MAXNUM - sbi - 1])>>maskShift[MAXNUM - sbi - 1]);
        uint8_t rhsval =  static_cast<uint8_t>((rhs&masks[MAXNUM - sbi - 1])>>maskShift[MAXNUM - sbi - 1]);
        if(lhsval != rhsval) {
            return pred(lhsval, rhsval);
        }
    }
    eq = true;
    return true; // always return true in this case.
}

inline uint32_t number::getThisVal(const numtype &nm, size_t &sbi) {
    if(sbi == MAXNUM) {
        sbi = 0;
    }    
    sbi++;
    return (nm&masks[sbi - 1])>>maskShift[sbi - 1];
}

inline void number::setThisVal(numtype &nm, uint32_t val, size_t &sbi) {
    if(sbi == MAXNUM) {
        sbi = 0;
    } 
    nm &= (~number::masks[sbi]);
    nm |= ((val << number::maskShift[sbi])& number::masks[sbi]);
    sbi++;
}

inline uint32_t number::getThisValRev(const numtype &nm, size_t &sbi) {
    if(sbi == MAXNUM) {
        sbi = 0;
    }    
    sbi++;
    return (nm&masks[MAXNUM - sbi])>>maskShift[MAXNUM - sbi];
}

inline void number::setThisValRev(numtype &nm, uint32_t val, size_t &sbi) {
    if(sbi == MAXNUM) {
        sbi = 0;
    } 
    nm &= (~number::masks[MAXNUM - sbi - 1]);
    nm |= ((val << number::maskShift[MAXNUM - sbi - 1])& number::masks[MAXNUM - sbi - 1]);
    sbi++;
}

//private inlines.
template<typename T>
inline void number::toString(const T& val) {
    std::stringstream s;
    s<<val;
    setFromStr(s.str());
}

//ctors
inline number::number(const number& num){
    _num = num._num;
    _frac = num._frac;
    _sign = num._sign;
    _nums = num._nums;
    _fracs = num._fracs;
}

inline number::number(const string &num) { //only (+-)18282.19292 is acceptable. rest will lead to undefined.
    setFromStr(num);
}

inline number::number(const char* num) { //only (+-)18282.19292 is acceptable. rest will lead to undefined.
    setFromStr(num);
}

inline number::number(uint64_t num) {
    toString(num);
}

inline number::number(uint32_t num){
    toString(num);
}

inline number::number(int64_t num){
    toString(num);
}

inline number::number(int32_t num){
    toString(num);
}

//dtor
inline number::~number(){}

//assignment

inline number &number::operator=(const number &rhs) {
    if(this == &rhs) {
        return *this;
    }
    _num = rhs._num;
    _frac = rhs._frac;
    _sign = rhs._sign;
    _nums = rhs._nums;
    _fracs = rhs._fracs;
    return *this;
}

inline number &number::operator=(uint64_t u64) {
    toString(u64);
    return *this;
}

inline number &number::operator=(uint32_t u32) {
    toString(u32);
    return *this;
}

inline number &number::operator=(int64_t i64) {
    toString(i64);
    return *this;
}

inline number &number::operator=(int32_t i32) {
    toString(i32);
    return *this;
}

inline number &number::operator=(const string& num) {
    setFromStr(num);
    return *this;
}

inline number &number::operator=(const char *num) {
    setFromStr(num);
    return *this;
}

//operators
//unary
inline number number::operator+() const {
    return number(*this);
}

inline number number::operator-() const {
    number ret(*this);
    ret._sign = !_sign;
    return ret;
}


//bool cast
inline number::operator bool() const { //true if positive else false.
    return _sign;
}


// private classes with inline () operator.
inline bool number::num_less::operator()(number::numtype lhs, number::numtype rhs) {
    bool eqrt = false;
    bool oprt = number::op(lhs, rhs, std::less<uint8_t>(), eqrt);
    return (!eqrt) && oprt;
}

inline bool number::num_less_equal::operator()(number::numtype lhs, number::numtype rhs) {
    bool eqrt = false;
    bool oprt = number::op(lhs, rhs, std::less<uint8_t>(), eqrt);
    return eqrt || oprt;
}

inline bool number::num_greater::operator()(number::numtype lhs, number::numtype rhs) {
    bool eqrt = false;
    bool oprt = number::op(lhs, rhs, std::greater<uint8_t>(), eqrt);
    return (!eqrt) && oprt;
}

inline bool number::num_greater_equal::operator()(number::numtype lhs, number::numtype rhs) {
    bool eqrt = false;
    bool oprt = number::op(lhs, rhs, std::greater<uint8_t>(), eqrt);
    return eqrt || oprt;
}

//comparison ops
inline bool number::operator!=(const number &rhs) const {
    return (_sign != rhs._sign) ||
        (_nums != rhs._nums) || (_fracs != rhs._fracs) ||
        (!(std::equal(_frac.begin(), _frac.end(), rhs._frac.begin()) &&
        std::equal(_num.begin(), _num.end(), rhs._num.begin())));
}

inline bool number::operator==(const number &rhs) const {
    return (_sign == rhs._sign) &&
        (_nums == rhs._nums) && (_fracs == rhs._fracs) &&
        std::equal(_frac.begin(), _frac.end(), rhs._frac.begin()) &&
        std::equal(_num.begin(), _num.end(), rhs._num.begin());
}

inline bool number::operator<(const number &rhs) const {
    volatile bool normeq = (_sign < rhs._sign) ||
        (_sign == rhs._sign) &&
        ((_nums < rhs._nums) ||
        (_nums == rhs._nums) && 
        ((_fracs < rhs._fracs) || 
         (_fracs == rhs._fracs) &&
         ((std::equal(_num.rbegin(), _num.rend(), rhs._num.rbegin(), num_less()) &&
           std::equal(_frac.rbegin(), _frac.rend(), rhs._frac.rbegin(), num_less()))))); 
    return ((!_sign) && (!normeq)) ||
        (_sign && rhs._sign && normeq);
}

inline bool number::operator<=(const number &rhs) const {
    volatile bool normeq = (_sign < rhs._sign) ||
        (_sign == rhs._sign) &&
        ((_nums < rhs._nums) ||
         (_nums == rhs._nums) && 
         ((_fracs < rhs._fracs) || 
          (_fracs == rhs._fracs) &&
          ((std::equal(_num.rbegin(), _num.rend(), rhs._num.rbegin(), num_less_equal()) &&
            std::equal(_frac.rbegin(), _frac.rend(), rhs._frac.rbegin(), num_less_equal())))));
    return ((!_sign) && (!normeq)) ||
        (_sign && rhs._sign && normeq);
}

inline bool number::operator>(const number &rhs) const {
    volatile bool normeq = (_sign > rhs._sign) ||
        (_sign == rhs._sign) &&
        ((_nums > rhs._nums) ||
         (_nums == rhs._nums) && 
         ((_fracs > rhs._fracs) || 
          (_fracs == rhs._fracs) &&
          ((std::equal(_num.rbegin(), _num.rend(), rhs._num.rbegin(), num_greater()) &&
            std::equal(_frac.rbegin(), _frac.rend(), rhs._frac.rbegin(), num_greater())))));
    return ((!_sign) && (!rhs._sign) && (!normeq)) ||
        (_sign && normeq);
}

inline bool number::operator>=(const number &rhs) const {
    volatile bool normeq = (_sign > rhs._sign) ||
        (_sign == rhs._sign) &&
        ((_nums > rhs._nums) ||
         (_nums == rhs._nums) && 
         ((_fracs > rhs._fracs) || 
          (_fracs == rhs._fracs) &&
          ((std::equal(_num.rbegin(), _num.rend(), rhs._num.rbegin(), num_greater_equal()) &&
            std::equal(_frac.rbegin(), _frac.rend(), rhs._frac.rbegin(), num_greater_equal())))));
    return ((!_sign) && (!rhs._sign) && (!normeq)) ||
        (_sign && normeq);
}

#endif //__NUMBER_IPP

