#include<string>
#include<iostream>
#include <vector>
#include <boost/tokenizer.hpp>
#include <boost/lexical_cast.hpp>

using namespace boost;

using namespace std;

/** \brief Main Metadata Processor class.
    Used to aggregate all metadata and
    transform it into a set of SQL statements for Input DB.
 */

typedef tokenizer<char_separator<char> > CharDelimitedTokenizer;
typedef CharDelimitedTokenizer::iterator Token;

int main(void){
    char_separator<char> sep("|");
    string str1="I am Amitava";
    string str2="I|am|Amitava|and how are| you";
    CharDelimitedTokenizer tok1(str1,sep);
    CharDelimitedTokenizer tok2(str2,sep);

    cout<<"For Str1 = "<<str1<<endl;
    for(Token i = tok1.begin();i != tok1.end(); ++i){
        cout<<lexical_cast<string>(*i)<<endl;
    }
    
    cout<<"For Str2 = "<<str2<<endl;
    for(Token i = tok2.begin();i != tok2.end(); ++i){
        cout<<lexical_cast<string>(*i)<<endl;
    }

    return 0;
}
