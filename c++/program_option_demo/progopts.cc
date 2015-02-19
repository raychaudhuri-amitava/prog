#include <fstream>
#include<string>

#include <boost/program_options.hpp>
namespace po = boost::program_options;
#include<iostream>
using namespace std;
    
void getUnregisteredConfigs(po::parsed_options &opts, vector<string> &res) {
    vector<po::basic_option<char> >::iterator it = opts.options.begin();
    string start_str;
    for(;it != opts.options.end(); ++it) {
        if((it->unregistered) && ((it->string_key).find("config-options") != string::npos)) {
            start_str = it->string_key;            
            break;
        }
    }

    string confs;
    for(;it != opts.options.end(); ++it) {
        if((it->unregistered) && (it->string_key == start_str)) {
            if(!confs.empty()) {
                res.push_back(confs);
            }
            confs.empty();
        }
        size_t pos = 0;
        if((it->unregistered) && ((pos = (it->string_key).find("config-options")) != string::npos)) {
            string ky = (it->string_key).substr(pos + 15);
            confs +=(ky + "=" + *(it->value.begin()) + "\n");
        }
    }
    if(!confs.empty()) {
        res.push_back(confs);
    }
}

int main(int argc, char ** argv) {

    std::ifstream config(argv[1], std::ios::binary);
    std::vector<std::string> sections;
    std::vector<std::string> subsections;
    std::vector<std::string> subsectionTypes;
    std::vector<std::string> valueType;
    std::vector<std::string> dsTypes;

    std::vector<std::string> strtKeys;
    std::vector<std::string> endKeys;
    std::vector<std::string> incrKeys;

    std::vector<std::string> strtValues;
    std::vector<std::string> incrValues;

    std::vector<char> keySeparators;
    std::vector<char> valueSeparators;

    po::options_description desc("List of subsections");
    std::string section_name;
    desc.add_options()
        ((string("sub-section-name") + ".section-name").c_str(), po::value< std::vector<std::string> >(&sections), "List of section names")
        ("sub-section-name.subsection-name", po::value< std::vector<std::string> >(&subsections), "List of sub-section names")
        ("sub-section-name.subsection-type", po::value< std::vector<std::string> >(&subsectionTypes), "List of sub-section names")
        ("sub-section-name.value_type", po::value< std::vector<std::string> >(&valueType), "List of value_type")
        ("sub-section-name.data_structure_type", po::value< std::vector<std::string> >(&dsTypes), "List of data_structure_type")
        ("sub-section-name.val_start", po::value< std::vector<std::string> >(&strtValues), "List of starting values")
        ("sub-section-name.val_incr", po::value< std::vector<std::string> >(&incrValues), "List of value increments")
        ("sub-section-name.key_start", po::value< std::vector<std::string> >(&strtKeys), "Starting keys")
        ("sub-section-name.key_end", po::value< std::vector<std::string> >(&endKeys), "End keys")
        ("sub-section-name.key_incr", po::value< std::vector<std::string> >(&incrKeys), "Key increments")
        ("sub-section-name.key-sep", po::value< std::vector<char> >(&keySeparators), "List of key seperators")
        ("sub-section-name.val-sep", po::value< std::vector<char> >(&valueSeparators), "List of value seperators")
    ;
    po::parsed_options parsed = po::parse_config_file(config, desc, true);
    po::variables_map vm;
    po::store(parsed, vm);
    po::notify(vm);

    for(vector<po::basic_option<char> >::iterator it = parsed.options.begin();
            it != parsed.options.end(); ++it) {
        cout<<"key = "<<it->string_key<<" is unreg = "<<it->unregistered<<"  pos = "<<it->position_key<<endl;
        for(vector<string>::iterator it1 = it->value.begin(); 
                it1 != it->value.end(); ++it1) {
            cout<<"Value = "<<*it1<<endl;
        }
        for(vector<string>::iterator it1 = it->original_tokens.begin(); 
                it1 != it->original_tokens.end(); ++it1) {
            cout<<"Token = "<<*it1<<endl;
        }
    }

    vector<string> unregs;
    getUnregisteredConfigs(parsed, unregs);

    for(vector<string>::iterator it1 = unregs.begin(); 
            it1 != unregs.end(); ++it1) {
        cout<<"val = "<<*it1<<endl;
    }
    config.close();
    return 0;
}

