/* -*- mode: c++; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*- */
/* vi: set expandtab shiftwidth=4 tabstop=4: */
/* RMHEADER
 */

#include "StringUtils.h"




static const char gsHex[] = "0123456789ABCDEF";


string urlencode(const string& str)
{
    string s;
    s.reserve(str.size() * 3);

    const int m = str.size();

    for (int i = 0; i < m; ++i) {
        const char c = str[i];
        if (isalnum(c)) {
            s += c;
        } else {
            s += '%';
            s += gsHex[c / 16];
            s += gsHex[c % 16];
        }
    }
    return s;
}

bool readFileToString(const std::string& strFilename,
                      std::string& strContents)
{
    typedef std::istreambuf_iterator<char> stream_iter;
    std::ifstream is(strFilename.c_str());
    if (!is) {
        return false;
    }
    strContents.assign(stream_iter(is), stream_iter());
    return true;
}

#include <boost/algorithm/string/replace.hpp>
#include <boost/algorithm/string/erase.hpp>
using boost::algorithm::erase_all;


string sizeToBytes(size_t x)
{
    const static double KILOBYTE = 1 << 10;
    const static double MEGABYTE = 1 << 20;
    const static double GIGABYTE = 1 << 30;
    const double xd = static_cast<double>(x);

    ostringstream oss;
    if (xd < KILOBYTE) {
        oss << x;
    } else if (xd < MEGABYTE) {
        oss << setprecision(1) << fixed << (xd / KILOBYTE) << 'K';
    } else if (x < GIGABYTE) {
        oss << setprecision(1) << fixed << (xd / MEGABYTE) << 'M';
    } else {
        oss << setprecision(1) << fixed << (xd / GIGABYTE) << 'G';
    }
    return oss.str();
}

int splitwords(const string& s, vector<string>& v, char c)
{
    v.clear();
    string::size_type last_pos = 0;
    for (string::size_type pos = s.find(c, last_pos) ; pos != string::npos ; pos = s.find(c, last_pos)) {
        if (pos - last_pos > 0) {
            v.push_back(s.substr(last_pos, pos - last_pos));
        }
        last_pos = pos + 1;
    }
    if (s.size() - last_pos > 0) {
        v.push_back(s.substr(last_pos, s.size()));
    }
    return v.size();
}
bool endsWith(const std::string& s, const char* suffix) {
    if (!suffix) {
        return false;
    }
    size_t len = strlen(suffix);
    if (s.size() < len) {
        return false;
    }
    return s.find(suffix, s.size() - len) != string::npos;
}

bool endsWith(const std::string& s, const std::string& suffix) {
    return endsWith(s, suffix.c_str());
}
