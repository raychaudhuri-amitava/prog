dh_map == Distributed Hash Map

Please note that i have written the following files:
-rw-rw-r-- 1 amitava amitava     622 Mar 18 22:06 admin.cc
-rw-rw-r-- 1 amitava amitava    3458 Mar 18 23:45 dh_map.cc
-rw-rw-r-- 1 amitava amitava    1070 Mar 18 22:38 dh_map.h
-rw-rw-r-- 1 amitava amitava    1369 Mar 18 23:46 serviceX.cc

The sqlite3 files can be obtained from the following
wget http://www.sqlite.org/2015/sqlite-amalgamation-3080803.zip

Do the following:
A) SQLITE DB setup
1) sudo apt-get install sqlite
2) sqlite3
sqlite> .open config
sqlite> create table config(id INTEGER PRIMARY KEY ASC, key TEXT, value TEXT, UNIQUE(key));
sqlite> .tables
config
sqlite> .tables config
config
sqlite> .dump config
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE config(id INTEGER PRIMARY KEY ASC, key TEXT, value TEXT, UNIQUE(key));
COMMIT;
sqlite> .quit

B) Compile the code
cc -DSQLITE_OMIT_LOAD_EXTENSION -DSQLITE_THREADSAFE=0 -static -c -o sqlite3.o sqlite3.c
g++ -std=c++11 -pthread -o serviceX dh_map.cc serviceX.cc sqlite3.o
g++ -std=c++11 -pthread -o admin dh_map.cc admin.cc sqlite3.o

Now add configs to the system using the following commands:
./admin abcd 123
./admin def 456
./admin ghi 789
./admin jkl 0987
./admin mno 6172
./admin pqr 4251
./admin stu 771
./admin vwx 18289

While adding the values we can also run the service parallely in another window as below:
amitava@Marian-HP:~/amitava_data/prog/c++/distributed_hash_map$ ./serviceX 
key = mno : value = key = abcd : value = 

key = def : value = key = pqr : value = 
key = ghi : value = 
key = jkl : value = 

key = stu : value = 
key = vwx : value = 
key = abcd : value = 123
key = def : value = 456
key = ghi : value = 789
key = jkl : value = 0987
key = abcd : value = 123
key = def : value = 456
key = ghi : value = 789
key = jkl : value = 0987
key = mno : value = 6172
key = pqr : value = 4251
key = stu : value = 771
key = vwx : value = 18289
key = abcd : value = 123
key = def : value = 456
key = ghi : value = 789
key = jkl : value = 0987
key = abcd : value = 123
key = def : value = 456
key = ghi : value = 789
key = jkl : value = 0987
^C

Now following is done:
dh_map is the implementation of get() and put() api of the distributed hash. It uses sqlite DB (we can use any DB like mysql DB, mongo DB etc) to store the key value pair. A thread starts (every 1 hr) and reads the DB and populates a temporary map. When there is no read happening, it switches the pointer and swaps the new map to the old map and deletes the old map. 

Use the following or greater c++ compiler:
amitava@Marian-HP:~/amitava_data/prog/c++/distributed_hash_map$ g++ --version
g++ (Ubuntu 4.8.2-19ubuntu1) 4.8.2
Copyright (C) 2013 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


