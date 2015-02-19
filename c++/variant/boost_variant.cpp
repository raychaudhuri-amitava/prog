#include <boost/variant.hpp>
#include <boost/variant/get.hpp>
#include <iostream>
#include <vector>
#include <stdint.h>
//#include "boost_variant.h"


typedef boost::variant<int8_t, int, float, std::string> internal_type;
typedef std::vector<internal_type> Params;
typedef std::vector<internal_type>::iterator a_iter;
Params pArray(10);

template <class T>
void addParam(int index_in_array, const T& val)
{
    pArray[index_in_array] = val;
}

template <class T>
void getParam(int index_in_array, T& val)
{
    val = boost::get<T>(pArray[index_in_array]);
}

int main()
{
    int8_t a1 = 10;
    float a2 = 0.23;
    std::string a3 = "abc";

    addParam(0, a1);
    addParam(1, a3);
    addParam(2, a2);

    int8_t b1 = 0;
    float b2 = 0;
    std::string b3 = "";
    getParam(2, b2);
    getParam(0, b1);
    getParam(1, b3);

    std::cout << (int)b1 << " " << b2 << " " << b3 << std::endl;
}

