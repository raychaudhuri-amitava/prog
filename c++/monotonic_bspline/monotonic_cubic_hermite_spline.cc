#include<iostream>
#include<set>
#include<string>
#include<vector>
#include<fstream>
#include<algorithm>
#include<iterator>
#include<cstdlib>
#include<cmath>

#include "HermiteSplineInterpolator.h"

using namespace std;
using namespace arc;


class BidElement {
	private:
		string key;
		double bidx;
		double winpy;
	public:
		BidElement(string const &k, double x, double y) : key(k),bidx(x), winpy(y) {}
		BidElement(istream &in) {
			string line;
			std::getline(in, line);
			vector<string> res;
			if(split(line, "\t", res, false) == 8) {
				key = res[0] + "|" + res[1] + "|" + res[2] + "|" + res[7];
				bidx = strtod((res[3]).c_str(), NULL);
				double imp = strtod((res[5]).c_str(), NULL);
				double suc = strtod((res[6]).c_str(), NULL);
				if((imp > 10.0) && (imp > suc) && (suc > 0.0)){
					winpy = suc / imp;
				} else {
					winpy = 0.0;
				}
			} 
		} 

		void write(ostream &out) const {
			out<<key<<","<<bidx<<","<<winpy<<endl;
		}

		bool operator<(BidElement const& lhs) const {
			return this->key < lhs.key;
		}

		bool operator<(BidElement const& lhs) {
			return this->key < lhs.key;
		}

		string const& getKey() const {return key;}
		double getBid() const {return bidx;}
		double getWinp() const {return winpy;}
	private:
		size_t split(const string& s, const string& delim, vector<string> &result, const bool keep_empty = true) {
			if (delim.empty()) {
				result.push_back(s);
				return result.size();
			}
			string::const_iterator substart = s.begin(), subend;
			while (true) {
				subend = search(substart, s.end(), delim.begin(), delim.end());
				string temp(substart, subend);
				if (keep_empty || !temp.empty()) {
					result.push_back(temp);
				}
				if (subend == s.end()) {
					break;
				}
				substart = subend + delim.size();
			}
			return result.size();
		}

};

class Regressor {
	private:
		map<string, HermiteSplineInterpolator> inp;
	public:
		void getAggregateVal() {
			while(cin) {
				BidElement be(cin);
				if(be.getWinp() > 0.0) {
					map<string, HermiteSplineInterpolator>::iterator fit = inp.find(be.getKey());
					if(fit != inp.end()) {
						(fit->second).addPair(be.getBid(), be.getWinp());
					} else {
						HermiteSplineInterpolator mp;
						mp.addPair(be.getBid(), be.getWinp());
						inp.insert(pair<string, HermiteSplineInterpolator>(be.getKey(), mp));
					}
				}
			}
		}

		double getEstimatedWinp(string key, double bid) const {
			map<string, HermiteSplineInterpolator>::const_iterator fit = inp.find(key);
			if(fit != inp.end()) {
				return (fit->second)(bid);
			}
			return -1.0;
		}

};


int main(int argc, char ** argv) {
	Regressor r;
	r.getAggregateVal();
	if(argc > 1) {
		ifstream inp(argv[1]);
                double N = 0.0;
                double rms_sum = 0.0;
                cout<<"Key=country|OSid|siteid|slot,bid,win probability,estimated win probability,error in estimate"<<endl;
		while(inp) {
			BidElement be(inp);
			double winp = r.getEstimatedWinp(be.getKey(), be.getBid());
			if(winp > 0.0) {
                                N++; 
                                rms_sum += ((be.getWinp() - winp)*(be.getWinp() - winp));
				cout<<be.getKey()<<","<<be.getBid()<<","<<be.getWinp()<<","<<winp<<","<<(be.getWinp() - winp)<<endl;
			}
		}
                if(N > 0.0) {
                    cerr<<"rms of error = "<<sqrt(rms_sum/N)<<endl;
                } else {
                    cerr<<"No such errors"<<endl;
                }

                inp.close();                
	}
        return 0;
}


