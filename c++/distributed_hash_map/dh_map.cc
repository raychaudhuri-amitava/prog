/*
 * =====================================================================================
 *
 *       Filename:  dhMap.cc
 *
 *    Description:  This is the implementation of the Distributed Hash Map.
 *
 *        Version:  1.0
 *        Created:  03/18/2015 07:15:27 PM
 *       Revision:  none
 *       Compiler:  g++
 *
 *         Author:  Amitava 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "dh_map.h"

#include <thread>
#include <chrono>
#include <functional>
#include <atomic>

#include<sstream>
#include<iostream>
#include "sqlite3.h"

using namespace std;

map<string, string> *dh_map::active_configurations = NULL;
mutex dh_map::slck;
int dh_map::num_readers = 0;
bool dh_map::threadStarted = false;


string dh_map::get(string const& key) {
    if((dh_map::active_configurations == NULL) || !read_only) {
        return "";
    }
    lockAndIncReaders();
    map<string, string>::iterator mit = dh_map::active_configurations->find(key);
    if(mit != dh_map::active_configurations->end()) {
        dh_map::num_readers--;
        return mit->second;
    }
    dh_map::num_readers--;
    return "";
}

bool dh_map::put(string key, string value) {
    if(read_only) {
        return false;
    }
    bool retVal = false;
    sqlite3 *db = NULL;
    int rc = sqlite3_open("config", &db);
    if(rc == SQLITE_OK) {
        char *zErrMsg = NULL;
        stringstream sstr;
        sstr<<"insert into config(key, value) values(\""<<key<<"\",\""<<value<<"\");";
        rc = sqlite3_exec(db, sstr.str().c_str(), NULL, NULL, &zErrMsg);
        if(rc!=SQLITE_OK ){
            cout<<"Error Msg : "<<zErrMsg<<endl;
            sqlite3_free(zErrMsg);
        } else {
            retVal = true;
        }
        sqlite3_close(db);
    } else {
        cout<<"Not able to open DB : "<<sqlite3_errmsg(db)<<endl;
        sqlite3_close(db);
    }
    return retVal;
}


bool dh_map::startLoading() {
    //Called in the begining so no locks.
    if(threadStarted) {
        return false;
    }

    thread T(dh_map::loadConfiguration);
    T.detach();

    threadStarted = true;

    return true;    
}

static int load_config_callback(void *theMap, int argc, char **argv, char **azColName){
    map<string, string> *aux_configurations = (map<string, string> *)theMap;
    aux_configurations->operator[](string(argv[1])) = string(argv[2]);
    return 0;
}

void dh_map::loadConfiguration() {
    while(true) {
        map<string, string> *aux_configurations = new map<string, string>();
        sqlite3 *db = NULL;
        int rc = sqlite3_open("config", &db);
        if(rc == SQLITE_OK) {
            char *zErrMsg = NULL;
            rc = sqlite3_exec(db, "select * from config;", load_config_callback, (void*)aux_configurations, &zErrMsg);
            if(rc!=SQLITE_OK ){
                cout<<"Error Msg : "<<zErrMsg<<endl;
                sqlite3_free(zErrMsg);
            }
            sqlite3_close(db);
            dh_map::slck.lock();
            while(dh_map::num_readers > 0) {}
            std::swap(active_configurations, aux_configurations);
            delete aux_configurations;
            aux_configurations = NULL;
            dh_map::slck.unlock();

        } else {
            cout<<"Not able to open DB : "<<sqlite3_errmsg(db)<<endl;
            sqlite3_close(db);
        }
        std::this_thread::sleep_for(std::chrono::seconds(60));
    }
}





