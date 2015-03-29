/*
 * =====================================================================================
 *
 *       Filename:  circular_list.cc
 *
 *    Description:  circular list for Josephus
 *
 *        Version:  1.0
 *        Created:  03/29/2015 03:06:31 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "circular_list.h"
#include<iostream>

using namespace std;

void clist::insert(int k) {
    clist_node *nd = new clist_node(k);
    if(head == NULL) {
        head = nd;
    } 
    nd->add_next(head);
    if(tail != NULL) {
        tail->add_next(nd);
    }
    tail = nd;
    sz++;
}

void clist::print_list() const {
    clist_node *nd = head;
    cout<<"\b";
    while(nd != tail) {
        nd->print_me();
        nd = nd->get_next();
    }
    if(nd != NULL) {
        nd->print_me();
    }
    cout<<endl;
}

void clist::remove_me(clist_node* nd) {
    if((nd == NULL) || (head == NULL) || (tail == NULL)) return;

    if(nd == tail) {
        head = head->get_next();
    }

    clist_node *nxt = nd->get_next();
    if(nxt == tail) {
        tail = nd;
    }

    nd->copy(nxt);
    delete nxt;    
    sz--;
    if(sz == 0) {
        head = tail = NULL;
    }
}

void clist::circular_remove(int skip) {
    int tskp = skip;
    clist_node *nd = head;
    while(sz > skip) {
        while(tskp > 0) {
            nd = nd->get_next();
            tskp--;
        }
        remove_me(nd);
        tskp = skip;
    }
}
