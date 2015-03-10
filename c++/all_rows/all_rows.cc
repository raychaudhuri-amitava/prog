#include<iostream>
#include<set>
#include<string>
#include<stdint.h>
#include <boost/lexical_cast.hpp>
using boost::lexical_cast;
using boost::bad_lexical_cast;

using namespace std;

typedef set<uint32_t> data_t;
typedef data_t::iterator itr;

int main(void){

    data_t crids;
    data_t campids;
    data_t convids;
    data_t pearlids;

    string str("");

    cout<<"enter all creative ids : ";
    cin>>str;
    while(str != "stop"){
        crids.insert(lexical_cast<uint32_t>(str));
        cin>>str;
    }
    str="";
    cout<<"enter all campaign ids : ";
    cin>>str;
    while(str != "stop"){
        campids.insert(lexical_cast<uint32_t>(str));
        cin>>str;
    }
    str="";
    cout<<"enter all conversion ids : ";
    cin>>str;
    while(str != "stop"){
        convids.insert(lexical_cast<uint32_t>(str));
        cin>>str;
    }
    str="";
    cout<<"enter all pearl ids : ";
    cin>>str;
    while(str != "stop"){
        pearlids.insert(lexical_cast<uint32_t>(str));
        cin>>str;
    }
    cout<<endl;

//    sort(crids.begin(),crids.end());
//    sort(campids.begin(),crids.end());
//    sort(convids.begin(),crids.end());
//    sort(pearlids.begin(),crids.end());

    string c=",";
    cout<<"data for cpa : "<<endl;
    for(itr it1=crids.begin();it1!=crids.end();++it1){
        for(itr it2=campids.begin();it2!=campids.end();++it2){
            for(itr it3=convids.begin();it3!=convids.end();++it3){
                for(itr it4=pearlids.begin();it4!=pearlids.end();++it4){
                    cout<<*it1<<c<<*it2<<c<<*it3<<c<<*it4<<endl;
                }
            }
        }
    }

    cout<<"data for dcpm : "<<endl;
    for(itr it1=crids.begin();it1!=crids.end();++it1){
        for(itr it2=campids.begin();it2!=campids.end();++it2){
            for(itr it3=convids.begin();it3!=convids.end();++it3){
                for(itr it4=pearlids.begin();it4!=pearlids.end();++it4){
                    cout<<*it1<<c<<*it2<<c<<*it3<<c<<*it4<<endl;
                }
            }
        }
    }

    cout<<"data for cpc : "<<endl;
    for(itr it1=crids.begin();it1!=crids.end();++it1){
        for(itr it4=pearlids.begin();it4!=pearlids.end();++it4){
            cout<<*it1<<c<<*it4<<endl;
        }
    }

    cout<<"data for dcpm learn: "<<endl;
    for(itr it1=crids.begin();it1!=crids.end();++it1){
        for(itr it2=campids.begin();it2!=campids.end();++it2){
            for(itr it4=pearlids.begin();it4!=pearlids.end();++it4){
                cout<<*it1<<c<<*it2<<c<<*it4<<endl;
            }
        }
    }

    return 0;

}

