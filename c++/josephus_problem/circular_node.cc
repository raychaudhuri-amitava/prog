/*
 * =====================================================================================
 *
 *       Filename:  circular_node.cc
 *
 *    Description:  circular list node for Josephus
 *
 *        Version:  1.0
 *        Created:  03/29/2015 03:02:02 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "circular_node.h"
#include<iostream>

using namespace std;

void clist_node::add_next(clist_node *nxt) {
    next = nxt;
}

clist_node* clist_node::get_next() const {
    return next;
}

int clist_node::get_id() const {
    return id;
}

void clist_node::copy(clist_node const* n) {
    if(n == NULL) return;
    id = n->id;
    next = n->next;
}

void clist_node::print_me() const {
    cout<<id<<"  ";
}


