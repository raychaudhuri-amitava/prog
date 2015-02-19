/* -*- mode: c++; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*- */
/* vi: set expandtab shiftwidth=4 tabstop=4: */
/* RMHEADER
 */

#ifndef INCLUDE_STRINGUTILS
#define INCLUDE_STRINGUTILS

#include <fstream>
#include <iterator>
#include <iostream>
#include <sstream>
#include <iomanip>
using std::setprecision;
using std::fixed;
using std::ostringstream;

#include <boost/lexical_cast.hpp>
using boost::lexical_cast;
using boost::bad_lexical_cast;

//
// Basic Helpers for dealing with strings
// hash, toupper, tolower, trimleft, trimright, trim
// I've written this 10,0000 times.

#include <cstdlib>
#include <cctype>

#include <vector>
using std::vector;

#include <string>
using std::string;

#include <algorithm>
using std::transform;

#include "SuperFastHash.h"

inline int strtol(const string& s)
{
    return strtol(s.c_str(), NULL, 10);
}

inline double strtod(const string& s)
{
    return strtod(s.c_str(), NULL);
}

/** \brief "Lexically casts" a string to a uint8_t.
 *
 * Use this instead of an actual lexical_cast<uint8_t>. The lexical
 * cast views uint8_t as a char, so a 0 is cast into 48, the ASCII
 * code for '0'.
 */
inline uint8_t strtouint8(const string& s)
{
    int i = lexical_cast<int>(s);
    if ((i < 0) || (i > 256)) {
        throw bad_lexical_cast();
    }
    return i;
}

struct string_hash
{
    size_t operator()(const string& key) const
    {
        return SuperFastHash(key.c_str(), key.size());
    }
};

//
// Turns all "unprintable characters" into '?'
//
struct ToPrintable
{
    char operator() (char c) const { return isprint(c) ? c : '?'; }
};

inline string& toprintable(string& s) {
    std::transform(s.begin(),      // source start
                   s.end(),        // source end
                   s.begin(),      // destination
                   ToPrintable());     // operation
    return s;
}

/**
 * Convience function for const char*
 *  (without it toprintable is take a reference to
 *  a temporary)
 */
inline string toprintable(const char* str)
{
    string s(str);
    return toprintable(s);
}


/**
 * Trim off whtespace from the front of a string
 *
 * This is about 100x faster than the equiv in boost
 * http://www.boost.org/boost/algorithm/string/trim.hpp
 * since it used locales and god-knows what else
 */
inline string& trimleft(string& s)
{
    return s.erase(0, s.find_first_not_of(" \t\n\r"));
}

inline string& trimright(string& s)
{
    return s.erase(s.find_last_not_of(" \t\n\r") + 1);
}

inline string& trim(string& s)
{
    return trimleft(trimright(s));
}

/**
 * Split a string into a type (string, int, double, etc)
 * delimited by a common or other type, and added
 * to an output vector.  Returns the size of vector ot -1 on
 * error.
 *
 *
 * INPORTANT: If you parse "1,2,3.0" will not turn into a vector of
 * ints, since '3.0' is NOT an integer -- it's a floating point
 * number.  If you have mixed numeric types you may wish to parse the
 * vector a doubles.
 *
 * IMPORTANT: whitespace does not matter "1, 2, 3 " will be turned into
 *  [1,2,3]
 *
 * IMPORTANT: empty tokens are invalid "1,,3" is bad.
 *
 * \param[in] s the input string to split
 * \param[in] c the delimiter char
 * \param[out] v the output vector of substrings
 * \return size of vector or -1 on error
 */
template<class K> int split(const string& s, char c, vector<K>& v)
{
    v.clear();
    string sub; // tmp var needed for substring
    try {
        string::size_type last_pos = 0;
        for (string::size_type pos = s.find(c, last_pos) ; pos != string::npos ; pos = s.find(c, last_pos)) {
            sub = s.substr(last_pos, pos - last_pos);
            v.push_back(lexical_cast<K>(trim(sub)));
            last_pos = pos + 1;
        }
        sub = s.substr(last_pos, s.size());
        v.push_back(lexical_cast<K>(trim(sub)));
        return v.size();
    } catch (const bad_lexical_cast&) {
        v.clear();
        return -1;
    }
}

/**
 * Split a string into a vector of strings (template specialization)
 *
 * IMPORTANT: This does NOT trim whitespace. "a, b, c" will be split
 * into "a", " b", " c".  This is because some other classes (Url)
 * what to see the whitespace and make choices.  I'll revisit this
 * later.
 *
 * IMPORTANT: Empty tokens are allowed "a,,c" will produce
 *   [ "a", "", "c" ]
 *
 * Tech Note: need inline if just in a header file.  The
 * specialization apparently gets turned into an ordinary function.
 *
 * \param[in] s the input string to split
 * \param[in] c the delimiter char
 * \param[out] v the output vector of substrings
 * \return size of vector or -1 on error
 */
template<> inline int split(const string& s, char c, vector<string>& v)
{
    v.clear();
    try {
        string::size_type last_pos = 0;
        for (string::size_type pos = s.find(c, last_pos) ; pos != string::npos ; pos = s.find(c, last_pos)) {
            v.push_back(s.substr(last_pos, pos - last_pos));
            last_pos = pos + 1;
        }
        v.push_back(s.substr(last_pos, s.size()));
        return v.size();
    } catch (const bad_lexical_cast&) {
        v.clear();
        return -1;
    }
}

/**
 * Like split but doesn't add empty strings
 * "A,,B" == {A, B} NOT {A, '', B}
 * (makes more sense when the split char is space)
 * "dog      cat" is {"dog", "cat"}
 * this function can be optimized more.
 *
 * \param[in] s input string
 * \param[out] v output token vector
 * \param[in] c the char to split on
 */
int splitwords(const string& s, vector<string>& v, char c = ' ');

inline int splitByString(const string& s, const string& delim, vector<string>& v) {
    v.clear();
    int delimlen = delim.length();
    string::size_type last_pos = 0;
    for (string::size_type pos = s.find(delim, last_pos) ; pos != string::npos ; pos = s.find(delim, last_pos)) {
        if (pos - last_pos > 0) {
            v.push_back(s.substr(last_pos, pos - last_pos));
        }
        last_pos = pos + delimlen;
    }
    if (s.size() - last_pos > 0) {
        v.push_back(s.substr(last_pos, s.size()));
    }
    return v.size();
}


/**
 * Inverse of split
 *
 * \param[in] v input vector
 * \param[in] c delimiter character
 * \param[out] s the output string
 */
inline void join(const vector<string>& v, char c, string& s)
{
    s.clear();
    for (vector<string>::const_iterator p = v.begin();  p != v.end(); ++p) {
        s += *p;
        if (p != v.end() - 1) {
            s += c;
        }
    }
}

/**
 * Read a file into a string
 *
 * Not sure how good this is.  This might throw an exception?
 * I found this here: http://www.adras.com/reading-entire-file-to-a-string.t1188-153.html
 *
 * \param[in] strFilename  the filename
 * \param[out] strContents output filename
 * \return true if good, false if error
 */
bool readFileToString(const std::string& strFilename,
                      std::string& strContents);

/**
 * Replace all instances of a character with a string.  This is NOT recursive.
 * Replacing 'c' -> 'cc' will work.  And replacing 'c' -> 'c' does not change
 * the input string.
 *
 * \param[in,out] s  the input string
 * \param[in] c  the character to replace
 * \param[in] toreplace  the replacement string
 * \param[in] len the length of the replacement string
 */
inline std::string& replaceAll(std::string& s,
                               const char c,
                               const char* toreplace, const int len)
{
    size_t pos = 0;
    while ((pos = s.find(c, pos)) != string::npos) {
        s.replace(pos, 1, toreplace, len);
        pos += len;
    }
    return s;
}

/**
 * Replace all instances of a substring with another.  This is NOT recursive.
 * Replacing "cat" -> "cats" will work.
 *
 * \param[in,out] s the input string
 * \param[in] tofind the string to find
 * \param[in] tofindlen  the length of match string
 * \param[in] toreplace the replacement string
 * \param[in] toreplacelen the length of the replacement string
 * \return the reference to the input string
 */
inline std::string& replaceAll(std::string& s,
                               const char* tofind,    const int tofindlen,
                               const char* toreplace, const int toreplacelen)
{
    size_t pos = 0;
    while ((pos = s.find(tofind, pos, tofindlen)) != string::npos) {
        s.replace(pos, tofindlen, toreplace, toreplacelen);
        pos += toreplacelen;
    }
    return s;
}

/**
 * Replace all instances of a substring with another.  This is NOT recursive.
 * Replacing "cat" -> "cats" will work.
 *
 * \param[in] s the input string
 * \param[in] tofind the string to find
 * \param[in] toreplace the replacement string
 */
inline std::string& replaceAll(std::string& s,
                               const string& tofind,
                               const string& toreplace)
{
    return replaceAll(s, tofind.data(), tofind.size(), toreplace.data(), toreplace.size());
}

/**
 * Replace all instances of a character with a string.  This is NOT recursive.
 * Replacing 'c' -> 'cc' will work.  And replacing 'c' -> 'c' does not change
 * the input string.
 *
 * \param[in] s  the input string
 * \param[in] tofind  the character to replace
 * \param[in] toreplace  the replacement string
 */
inline std::string& replaceAll(std::string& s, const char tofind, const string& toreplace)
{
    return replaceAll(s, tofind, toreplace.data(), toreplace.size());
}

/**
 * \brief erase a single character from a string
 * Modeled on the boost::algorithm::erase model
 * boost:erase only can do erase_all(str, "c")
 * NOT 'c'
 */
inline void erase_all(std::string& s, char r)
{
    size_t pos = 0;
    while ((pos = s.find(r, pos)) != string::npos) {
        s.erase(pos, 1); // erase 1 char
    }
}

/**
 * Encode string so it's suitable to add as a embedded string in a
 * javascript program.  For example if the c-string is
 * var a = "123";
 * var b = 'abc';
 * the resulting JS string would be
 * var a = \\"123\\";\\nvar b = \\'abc\\';
 *
 * This also removes Windows \\r newlines.  Not sure why
 * we do this or where they might come from.
 *
 * \param[in] s the input string (modified)
 * \return the reference to the input string
 */
std::string& javascriptEncode(std::string& s);

std::string urlencode(const char* s, int len);
std::string urlencode(const std::string& s);

/**
 * converts a size_t to an "metric units"
 * like 'ls -lh'
 */
string sizeToBytes(size_t x);

bool endsWith(const std::string& s, const char* suffix);

bool endsWith(const std::string& s, const std::string& suffix);
#endif

