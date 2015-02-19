#include<iostream>
#include<string>
#include<map>
#include <boost/assign.hpp>

using namespace std;

#define NAME_ENUM(x) (std::string(#x), int32_t(x))

namespace enm {
    enum {
        INVALID_TYPE = -1,
        A = 0,
        B,
        C,
        D,
    };
}
int main(void) {

    std::map<std::string,int> mp;
    boost::assign::insert(mp)
        NAME_ENUM(enm::INVALID_TYPE)
        NAME_ENUM(enm::A)
        NAME_ENUM(enm::B)
        NAME_ENUM(enm::C)
        NAME_ENUM(enm::D);

    for(map<string, int>::iterator it = mp.begin(); it != mp.end(); ++it) {
        cout<<"enum name = "<<(*it).first<<"  enum val = "<<(*it).second<<endl;
    }

    return 0;
}

