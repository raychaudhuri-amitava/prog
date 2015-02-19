#include<iostream>
#include<string>
#include<cstdlib>
#include<stdint.h>

using namespace std;

int convert210(string num, uint32_t fromb) {
    int ret = 0;
    for(int i = 0; i <= num.size(); ++i) {
        if(num[i] >= '0' && num[i] <= '9') {
            if((num[i] - '0') < fromb) {
                ret = ret * fromb + (int)(num[i] - '0');
            }
        } else if(num[i] >= 'A' && num[i] <= 'F') {
            if((num[i] - 'A' + 10) < fromb) {
                ret = ret * fromb + (int)(num[i] - 'A' + 10);
            }
        } else if((i == 0) && (num[i] == '-')) {
            continue;
        }
    }
    if(num[0] == '-') {
        ret = -ret;
    }

    return ret;
}

string double_babble(int num, uint32_t tobase){
    string ret;
    uint32_t r = 0;
    bool negflag = (num < 0)?true:false;
    if(num < 0) {
        num = -num;
    }
    do {
        r = num % tobase;
        num = num/tobase;
        if(r >= 0 && r <= 9) {
            ret += (char)(r + '0');
        } else if(r >= 10 && r <= 15) {
            ret += (char)((r - 10) + 'A');
        }
    }while(num >= tobase);
    if(num >= 0 && num <= 9) {
        ret += (char)(num + '0');
    } else if(num >= 10 && num <= 15) {
        ret += (char)((num - 10) + 'A');
    }
    if(negflag) {
        ret += '-';
    }
    return string(ret.rbegin(), ret.rend());
}



string convert_to_base(string num, uint32_t b1, uint32_t b2) {

    if(b1 < 2 || b1 > 16 || b2 < 2 || b2 > 16) {
        return string("-1");
    }

    int num_val = convert210(num, b1);
    return double_babble(num_val, b2);
}



int main(int argc, char ** argv) {
    if(argc != 4) {
        cout<<"syntax : "<<argv[0]<<" <num> <frombase> <tobase>"<<endl;
        return -1;
    }

    int b1 = atoi(argv[2]);
    int b2 = atoi(argv[3]);

    cout<<"("<<argv[1]<<")"<<b1<<" == ("<<convert_to_base(argv[1], b1, b2)<<")"<<b2<<endl;
    return 0;
}


