/*
 * =====================================================================================
 *
 *       Filename:  admin.cc
 *
 *    Description:  Used to change the entries in DB
 *
 *        Version:  1.0
 *        Created:  03/18/2015 10:03:51 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "dh_map.h"

int main(int argc, char ** argv) {
    dh_map dm(false);
    if(argc < 3) return 0;
    dm.put(string(argv[1]), string(argv[2]));
    return 0;
}
