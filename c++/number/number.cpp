#include "number.hpp"
#include<algorithm>
#include<iostream>
uint32_t number::prec = DEFAULT_PREC;
const size_t number::MAXNUM;
const uint32_t number::allDigits[BASE+2] = {
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0xFFFFFFFF, 0x0000000F
};
const uint32_t number::masks[number::MAXNUM] = {
    0xF0000000u, 0x0F000000u,
    0x00F00000u, 0x000F0000u,
    0x0000F000u, 0x00000F00u,
    0x000000F0u, 0x0000000Fu
};
const uint32_t number::maskShift[number::MAXNUM] = {
    28, 24, 20, 16, 12, 8, 4, 0
};
const uint32_t number::complement[BASE] = {
    0, 9, 8, 7, 6, 5, 4, 3, 2, 1
};
const uint8_t number::powerShift[65] = {
    0, 0, 1, 0, 2, 0, 0, 0, 3,
    0, 0, 0, 0, 0, 0, 0, 4, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 5, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 6
};


void number::setFromStr(const string& num) {
   _nums = 0;
   _fracs = 0;
   _frac.clear();
   _num.clear();
   _sign = true;
   size_t zero_pos = 0;
   if(num[0] == '-') {
       _sign = false;
       zero_pos = 1;
   }
   else if(num[0] == '+') {
       zero_pos = 1;
   }
   while(num[zero_pos] == '0') {
       const_cast<string&>(num).replace(zero_pos, 1, "");
   }
   ssize_t i = 0;
   ssize_t k = num.length() - 1;
   size_t sbi = 0;
   if(num.rfind('.') != string::npos) { 
       _frac.push_back(number::allDigits[BASE]);
       for(; (k >= 0) && (num[k] != '.'); --k) {
           if(sbi == number::MAXNUM) {
               sbi = 0;
               _frac.push_back(number::allDigits[BASE]);
               i++;
           }
           uint32_t nm = static_cast<uint32_t>(num[k] - '0');
           _frac[i] &= (~number::masks[sbi]);
           _frac[i] |= ((nm << number::maskShift[sbi])& number::masks[sbi]);
           sbi++;
           _fracs++;
       }
       --k;
       if(num[k] == '+' || num[k] == '-') {
           --k; //ignore.
       }
   }
   i = 0;
   sbi = 0;
   _num.push_back(number::allDigits[BASE]);
   for(; (k >= 0)&&(num[k] != '-')&&(num[k] != '+'); --k) {
       if(sbi == number::MAXNUM) {
           sbi = 0;
           _num.push_back(number::allDigits[BASE]);
           i++;
       }
       uint32_t nm = static_cast<uint32_t>(num[k] - '0');
       _num[i] &= (~number::masks[sbi]);
       _num[i] |= ((nm << number::maskShift[sbi])& number::masks[sbi]);
       _nums++;
       sbi++;
   }
}

void number::trimNums(void) {
    //will be done in 2 passes.
    size_t sbis = 0;
    for(vector<numtype>::reverse_iterator rit = _num.rbegin();
            rit != _num.rend(); ) {
        if(sbis == number::MAXNUM) {
            ++rit;
        }
        uint32_t val = getThisValRev(*rit, sbis);        
        std::cout<<"val = "<<val<<" sbi = "<<sbis<<" all digits = "<<number::allDigits[BASE + 1]<<std::endl;
        if(val == number::allDigits[BASE + 1]) {
            continue;
        }
        else if(val == number::allDigits[0]) {
            --sbis;
            number::setThisValRev(*rit, number::allDigits[BASE + 1], sbis);
            _nums--;
        }
        else {
            break;
        }
    }
    for(vector<numtype>::reverse_iterator rit = _num.rbegin();
            rit != _num.rend(); ) {
        std::cout<<"rit = "<<*rit<<" base = "<<number::allDigits[BASE]<<std::endl;
        if(*rit == number::allDigits[BASE]) {
            _num.pop_back();
            rit = _num.rbegin();
        }else {
            break;
        }
    } 
}

void number::sameSignAdd(const number &rhs, number &ans) const {
    //fracs first.
    const number *left = NULL;
    const number *right = NULL;
    size_t carry = 0;
    ans._sign = _sign;
    if(_fracs > 0 || rhs._fracs > 0) {
        size_t diff = 0;
        if(_fracs > rhs._fracs) {
            diff = _fracs - rhs._fracs;
            left = this;
            right = &rhs;
        } else {
            diff = rhs._fracs - _fracs;
            left = &rhs;
            right = this;
        }
        size_t lfi = 0;
        size_t lsbig = 0;
        size_t sbis = 0;
        size_t fi = 0;
        ans._frac.push_back(number::allDigits[BASE]);
        for(; fi < diff; fi++) {
            if(sbis == number::MAXNUM) {
                ans._frac.push_back(number::allDigits[BASE]);
                lfi++;
            }
            uint32_t val = number::getThisVal((left->_frac)[lfi], lsbig);
            number::setThisVal(ans._frac[lfi], val, sbis);
            ans._fracs++;
        }
        size_t rfi = 0;
        size_t rsbig = 0;
        for(; fi < left->_fracs; fi++) {
            if(sbis == number::MAXNUM) {
                ans._frac.push_back(number::allDigits[BASE]);
                lfi++;
            }
            if(rsbig == number::MAXNUM) {
                rfi++;
            }
            uint32_t val1 = number::getThisVal((left->_frac)[lfi], lsbig);
            uint32_t val2 = number::getThisVal((right->_frac)[rfi], rsbig);
            uint32_t sum = (val1 + val2 + carry) % 10;
            carry = (carry + val1 + val2) / 10;
            number::setThisVal(ans._frac[lfi], sum, sbis);
            ans._fracs++;
        }
    }
    //now the nums.
    if(_nums > 0 || rhs._nums > 0) {
        if(_nums > rhs._nums) {
            left = this;
            right = &rhs;
        } else {
            left = &rhs;
            right = this;
        }
        size_t lfi = 0;
        size_t lsbig = 0;
        size_t sbis = 0;
        size_t fi = 0;
        ans._num.push_back(number::allDigits[BASE]);
        size_t rfi = 0;
        size_t rsbig = 0;
        for(; fi < right->_nums; fi++) {
            if(sbis == number::MAXNUM) {
                ans._num.push_back(number::allDigits[BASE]);
                rfi++;
            }
            if(lsbig == number::MAXNUM) {
                lfi++;
            }
            uint32_t val1 = number::getThisVal((left->_num)[lfi], lsbig);
            uint32_t val2 = number::getThisVal((right->_num)[rfi], rsbig);
            uint32_t sum = (val1 + val2 + carry) % BASE;
            carry = (carry + val1 + val2) / BASE;
            number::setThisVal(ans._num[rfi], sum, sbis);
            ans._nums++;
        }
        for(; fi < left->_nums; fi++) {
            if(sbis == number::MAXNUM) {
                ans._num.push_back(number::allDigits[BASE]);
                rfi++;
            }
            if(lsbig == number::MAXNUM) {
                lfi++;
            }
            uint32_t val1 = number::getThisVal((left->_num)[lfi], lsbig);
            uint32_t sum = (val1 + carry) % 10;
            carry = (val1 + carry) / 10;
            number::setThisVal(ans._num[rfi], sum, sbis);
            ans._nums++;
        }
    }
}

void number::diffSignAdd(const number &rhs, number &ans) const {

}

//operators
//unary

number& number::operator++() {
    return *this;
}
    
number& number::operator--() {
    return *this;
}

number& number::operator++(int dummy) {
    return *this;
}

number& number::operator--(int dummy) {
    return *this;
}


//binary ops
number number::operator%(const number &rhs) const {
    return number(*this);
}

number &number::operator%=(const number &rhs) {
    return *this;
}

number number::operator*(const number &rhs) const {
    return number(*this);
}

number &number::operator*=(const number &rhs) {
    return *this;
}

number number::operator+(const number &rhs) const {
    number ans;
    if(_sign == rhs._sign) {
        sameSignAdd(rhs, ans);
    }
    else {
        diffSignAdd(rhs, ans);
    }
    return ans;
}

number &number::operator+=(const number &rhs) {
    *this = *this + rhs;
    return *this;
}

number number::operator-(const number &rhs) const {
    number ans;
    if(_sign == rhs._sign) {
        diffSignAdd(-rhs, ans);
    }
    else {
        sameSignAdd(-rhs, ans);
    }
    return number(*this);
}

number &number::operator-=(const number &rhs) {
    *this = *this - rhs;    
    return *this;
}

number number::operator/(const number &rhs) const {
    return number(*this);
}

number &number::operator/=(const number &rhs) {
    return *this;
}

number number::operator^(const number &rhs) const { //power
    return number(*this);
}

number &number::operator^=(const number &rhs) { //power
    return *this;
}

std::ostream& operator<<(std::ostream &out, const number &numb) {
    if(!numb._sign) {
        out<<"-";
    }
    for(vector<number::numtype>::const_reverse_iterator rit = numb._num.rbegin();
            rit < numb._num.rend(); ++rit) {
        number::numtype val = *rit;
        for(size_t sbi = 0; sbi < number::MAXNUM; ++sbi) {
            uint8_t actval =  static_cast<uint8_t>((val&number::masks[number::MAXNUM - sbi - 1])>>number::maskShift[number::MAXNUM - sbi - 1]);
            if(actval <= number::allDigits[BASE - 1]) {
                char nmval = actval + '0';
                out<<nmval;
            }
        }
    }
    if(numb._fracs > 0){
        out<<'.';
        for(vector<number::numtype>::const_reverse_iterator rit = numb._frac.rbegin();
                rit < numb._frac.rend(); ++rit) {
            number::numtype val = *rit;
            for(size_t sbi = 0; sbi < number::MAXNUM; ++sbi) {
                uint8_t actval =  static_cast<uint8_t>((val&number::masks[number::MAXNUM - sbi - 1])>>number::maskShift[number::MAXNUM - sbi - 1]);
                if(actval <= number::allDigits[BASE - 1]) {
                    char nmval = actval + '0';
                    out<<nmval;
                }
            }
        }
    }
    return out;
}

std::istream& operator>>(std::istream &in, number &numb) {
    string str;
    in>>str;
    numb.setFromStr(str);
    return in;
}
