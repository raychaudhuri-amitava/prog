/*
 * =====================================================================================
 *
 *       Filename:  dh_map.h
 *
 *    Description:  This is the implementation of the Distributed Hash Map.
 *
 *        Version:  1.0
 *        Created:  03/18/2015 07:16:25 PM
 *       Revision:  none
 *       Compiler:  g++
 *
 *         Author:  Amitava
 *   Organization:  
 *
 * =====================================================================================
 */

#include<map>
#include<string>
#include<mutex>

using namespace std;

class dh_map {
    private:
    static map<string, string> *active_configurations;
    static bool threadStarted;
    static mutex slck;
    static int num_readers;
    bool read_only;

    public:
    dh_map(bool rd) : read_only(rd) {}

    string get(string const& key);
    bool put(string key, string value);

    static bool startLoading();
    static void loadConfiguration();

    private:
    void lockAndIncReaders() {
        dh_map::slck.lock();
        dh_map::num_readers++;
        dh_map::slck.unlock();
    }
};

