/*
 * =====================================================================================
 *
 *       Filename:  circular_list.h
 *
 *    Description:  circular list node for Josephus
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


class clist_node {
    private:        
        int id;
        clist_node* next;

    public:
        clist_node(int i):id(i), next(NULL) {}
        clist_node(int i, clist_node *n):id(i), next(n) {}
        void add_next(clist_node *nxt);
        clist_node * get_next() const;
        int get_id() const;
        void print_me() const;
        void copy(clist_node const* n);
        ~clist_node() {
            next = NULL;
        }
};

