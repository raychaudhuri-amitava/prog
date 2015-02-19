#include "number.hpp"
#include<iostream>
#include<sstream>
using namespace std;

#include <cxxtest/TestSuite.h>

class NumberTestSuit : public CxxTest::TestSuite {
    private:
        void checkNumber(const number &nm, const char* str) const {
            ostringstream ot;
            ot<<nm;
            cout<<"|"<<ot.str()<<" but its "<<nm<<"|"<<endl;
            TS_ASSERT_EQUALS(ot.str() == string(str), true);
        } 
    public:
        void testPositiveNumberOutput(void) {
            number n("7819911.81819199871188");
            ostringstream o;
            o<<n;
            TS_ASSERT_EQUALS(o.str() == string("7819911.81819199871188"), true);
        }
        void testPositiveNumberInput(void) {
            number n;
            istringstream in("7178289911.77881628191");
            in>>n;
            ostringstream ot;
            ot<<n;
            TS_ASSERT_EQUALS(ot.str() == string("7178289911.77881628191"), true);
        }
        void testNegativeNumberOutput(void) {
            number n("-7819911.81819199871188");
            ostringstream o;
            o<<n;
            TS_ASSERT_EQUALS(o.str() == string("-7819911.81819199871188"), true);
        }
        void testNegativeNumberInput(void) {
            number n;
            istringstream in("-7178289911.77881628191");
            in>>n;
            ostringstream ot;
            ot<<n;
            TS_ASSERT_EQUALS(ot.str() == string("-7178289911.77881628191"), true);
        }
        void testCtors(void) {
            const char *s = "-71881929910100182516617717628189919191912.91882919655637718188188277373";
            string str("919167176271772188991.18818827182881881818992818361717129911");
            uint64_t u64 = 82899181989ull;
            uint32_t u32 = 781812u;
            int64_t i64 = -8828121177162ll;
            int32_t i32 = -77212;
            number ns(s);
            number nstr(str);
            number nu64(u64);
            number nu32(u32);
            number ni64(i64);
            number ni32(i32);
            number ncpy(ns);
            checkNumber(ns, "-71881929910100182516617717628189919191912.91882919655637718188188277373");
            checkNumber(nstr, "919167176271772188991.18818827182881881818992818361717129911");
            checkNumber(nu64, "82899181989");
            checkNumber(nu32, "781812");
            checkNumber(ni64, "-8828121177162");
            checkNumber(ni32, "-77212");
            checkNumber(ncpy, "-71881929910100182516617717628189919191912.91882919655637718188188277373");
        }
        void testAssignment(void) {
            const char *s = "-71881929910100182516617717628189919191912.91882919655637718188188277373";
            string str("919167176271772188991.18818827182881881818992818361717129911");
            uint64_t u64 = 82899181989ull;
            uint32_t u32 = 781812u;
            int64_t i64 = -8828121177162ll;
            int32_t i32 = -77212;
            number ns;
            number nstr;
            number nu64;
            number nu32;
            number ni64;
            number ni32;
            number ncpy;
            ns = s;
            nstr = str;
            nu64 = u64;
            nu32 = u32;
            ni64 = i64;
            ni32 = i32;
            ncpy = ns;
            checkNumber(ns, "-71881929910100182516617717628189919191912.91882919655637718188188277373");
            checkNumber(nstr, "919167176271772188991.18818827182881881818992818361717129911");
            checkNumber(nu64, "82899181989");
            checkNumber(nu32, "781812");
            checkNumber(ni64, "-8828121177162");
            checkNumber(ni32, "-77212");
            checkNumber(ncpy, "-71881929910100182516617717628189919191912.91882919655637718188188277373");
        }
        void testVariousNumbers(void) {
            number n1("0.0012817882671728816273");
            number n2("0000000000000.0012817882671728816273000000000000000");
            number n3("0012817882671728816273");
            number n4("+000000000001281788267172881627300000000000000000000");
            number n5("12817882671728816273.000000000000000000000");
            number n6("0000000000000000000000000012817882671728816273");
            number n7("+.000000000001281788267172881627300000000000000000000");
            number n8("-.111111111111111110012817882671728816273000000000000000");
            number n9("-0000000000000000000000000012817882671728816273");

            checkNumber(n1, ".0012817882671728816273");
            checkNumber(n2, ".0012817882671728816273000000000000000");
            checkNumber(n3, "12817882671728816273");
            checkNumber(n4, "1281788267172881627300000000000000000000");
            checkNumber(n5, "12817882671728816273.000000000000000000000");
            checkNumber(n6, "12817882671728816273");
            checkNumber(n7, ".000000000001281788267172881627300000000000000000000");
            checkNumber(n8, "-.111111111111111110012817882671728816273000000000000000");
            checkNumber(n9, "-12817882671728816273");
        }
        void testSameSignAdd(void) {
            number n1("+00000000000888888888888111176211213333333333333423411636.188212712663171381872781268128316236162");
            number n2("16627178888889231628711.718826177218");
            number n3;
            n3 = n1 + n2;
            checkNumber(n3,"888888888888111176211229960512222222655040347.907038889881171381872781268128316236162");
        }
};
