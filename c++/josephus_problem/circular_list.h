/*
 * =====================================================================================
 *
 *       Filename:  circular_list.h
 *
 *    Description:  circular list for Josephus
 *
 *        Version:  1.0
 *        Created:  03/29/2015 01:49:34 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */


#include <cstddef>
#include "circular_node.h"

class clist {
    private:        
        int sz;
        clist_node* head;
        clist_node* tail;

    public:
        clist():sz(0), head(NULL), tail(NULL){}
        void insert(int k); // at the end of tail always.
        void circular_remove(int skip); // O(sz)
        void print_list() const;
        int size() const {
            return sz;
        }
        ~clist() {
            circular_remove(0);
        }
    private:
        void remove_me(clist_node* nd);          
};

