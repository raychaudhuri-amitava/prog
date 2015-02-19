#include<plot.h>
#include<string>
#include<cstdlib>
#include <limits>
#include <time.h>


#include <boost/program_options.hpp>
namespace bpo = boost::program_options;
#include <boost/lexical_cast.hpp>
using boost::lexical_cast;
using boost::bad_lexical_cast;
#include<iostream>
#include<fstream>
#include<vector>
#include<map>


using namespace std;
    

bool getFudges(vector<string>& fudges, map<uint32_t, double>& real_fudges) {
    for(vector<string>::iterator it = fudges.begin(); it != fudges.end(); ++it) {
        try {
            size_t pos = it->find_last_of(':');
            if(pos == string::npos) {
                cout<<"Wrong format for fudge\n";
                return false;
            }
            uint32_t ky_pos = lexical_cast<uint32_t>(it->substr(0, pos));
            double fudge = lexical_cast<double>(it->substr(pos+1));            
            real_fudges[ky_pos] = fudge;
        } catch (const bad_lexical_cast&) {
            cout<<"Error in the fudge "<<*it<<"\n";
            return false;
        }
    }
    return true;
}

void splineThisSet(string& inpFile, string& outFile, map<uint32_t, double>& fudges, bool with_diff) {
    ifstream ifs(inpFile.c_str());
    ofstream ofs(outFile.c_str());
    string line;
    while(getline(ifs, line)) {
        if(line.find("START") == 0) {
            ofs<<line<<"\n";
            vector<string> allstats;
            while(getline(ifs, line)) {
                if(line.find("END") == 0) {
                    break;
                }
                allstats.push_back(line);
            }
            uint32_t pos = 0;
            for(vector<string>::iterator it = allstats.begin(); it != allstats.end(); ++it) {
                string thst = *it;
                size_t vlps = thst.find_last_of(':');                    
                double val = strtod(thst.substr(vlps + 2).c_str(), NULL);
                string text = thst.substr(0, vlps+2);
                map<uint32_t, double>::iterator it = fudges.find(pos);
                double diff = 0.0;
                if(it != fudges.end()) {
                    if(with_diff) {
                        diff = val - (val - it->second);
                    }
                    val -= (it->second);
                }
                if(with_diff) {
                    ofs<<text<<val<<","<<diff<<"\n";
                } else {
                    ofs<<text<<val<<"\n";
                }

                pos++;
            }
            ofs<<line<<"\n";
            allstats.clear();
        }
    }
}

int main(int argc, char ** argv) {
    string dir;
    vector<string> qpslist;
    string out_dir;
    string filestart;
    vector<string> fudges;
    bpo::options_description desc("options");
    srand(time(0));
    bool with_diff = false;
    desc.add_options()
        ("dir,d", bpo::value<string>(&dir), "Set the input dir.")
        ("qps-list,q", bpo::value<vector<string> >(&qpslist), "Set the qps list. Provide multiple options")
        ("out-dir,o", bpo::value<string>(&out_dir), "Output dir")
        ("file-start,f", bpo::value<string>(&filestart), "Set the start of file")
        ("spline-fudge,s", bpo::value<vector<string> >(&fudges), "Set spline fudge. The fudge value should be greater than 1.0, and position is 0 based. position:fudge format")
        ("with-diff,w", bpo::value<bool>(&with_diff)->default_value(false), "Check whether diff is also needed.")
        ;

    bpo::variables_map vm;
    bpo::store(bpo::parse_command_line(argc, argv, desc), vm);
    bpo::notify(vm);
    
    if((argc == 1) || dir.empty() || (qpslist.size() == 0) || filestart.empty() || fudges.size() < 1) {
        cout<<"usage: "<<desc<<"\n";
        return 0;
    }

    if(out_dir.empty()) {
        out_dir = ".";
    }

    map<uint32_t, double> real_fudges;
    if(!getFudges(fudges, real_fudges)) {
        return 0;
    }

    for(vector<string>::iterator it = qpslist.begin(); it != qpslist.end(); ++it) {
        cout<<"Starting for "<<*it<<" qps ...\n";
        string inp_file = dir + "/" + filestart + "." + *it;
        string out_file = out_dir + "/" + filestart + "." + *it;
        splineThisSet(inp_file, out_file, real_fudges, with_diff);
        cout<<*it<<" qps is done\n";
    }
    return 0;
}

