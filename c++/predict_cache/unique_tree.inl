/*******************************************************************************
Tree Container Library: Generic container library to store data in tree-like structures.
Copyright (c) 2006  Mitchel Haas

This software is provided 'as-is', without any express or implied warranty. 
In no event will the author be held liable for any damages arising from 
the use of this software.

Permission is granted to anyone to use this software for any purpose, 
including commercial applications, and to alter it and redistribute it freely, 
subject to the following restrictions:

1.	The origin of this software must not be misrepresented; 
you must not claim that you wrote the original software. 
If you use this software in a product, an acknowledgment in the product 
documentation would be appreciated but is not required.

2.	Altered source versions must be plainly marked as such, 
and must not be misrepresented as being the original software.

3.	The above copyright notice and this permission notice may not be removed 
or altered from any source distribution.

Email questions, comments or suggestions to mhaas@datasoftsolutions.net
*******************************************************************************/
#pragma once
#include <algorithm>

// copy constructor
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
unique_tree<stored_type, node_compare_type, node_order_compare_type>::unique_tree( const tree_type& rhs ) 
	: associative_tree_type(rhs), pOrphans(0), allowing_orphans(false)
{
	allowing_orphans = rhs.allowing_orphans;  // copy orphan flag

	if (rhs.pOrphans) { // orphans present?
		basic_tree_type::allocate_tree_type(pOrphans, tree_type());
		base_const_iterator it = rhs.pOrphans->begin();
		const base_const_iterator it_end = rhs.pOrphans->end();
		for ( ; it != it_end; ++it ) { // copy orphans
			pOrphans->insert(*it);
		}
	} else 
		pOrphans = 0;

	base_const_iterator it = rhs.begin();
	const base_const_iterator it_end = rhs.end();
	for ( ; it != it_end; ++it ) { // do deep copy by inserting children (and descendants)
		basic_tree_type::insert(*it, this);
	}
}

// assignment operator
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
unique_tree<stored_type, node_compare_type, node_order_compare_type>& 
unique_tree<stored_type, node_compare_type, node_order_compare_type>::operator = (const tree_type& rhs)
{
	if ( this == &rhs )  // check for self assignment
		return *this;

	clear();
	basic_tree_type::operator =(rhs); // base class operation

	allowing_orphans = rhs.allowing_orphans;

	if (rhs.pOrphans) { // orphans present?
		basic_tree_type::allocate_tree_type(pOrphans, tree_type());  // yes.  copy them
		base_const_iterator it = rhs.pOrphans->begin();
		const base_const_iterator it_end = rhs.pOrphans->end();
		for ( ; it != it_end; ++it ) {
			pOrphans->insert(*it);
		}
	} else 
		pOrphans = 0;

	base_const_iterator it = rhs.begin();
	const base_const_iterator it_end = rhs.end();
	for ( ; it != it_end; ++it ) {  // copy all children (and descendants)
		basic_tree_type::insert(*it, this);
	}

	return *this;
}


// set(const tree_type&)
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
void unique_tree<stored_type, node_compare_type, node_order_compare_type>::set(const tree_type& tree_obj)
{
	if ( !check_for_duplicate(*tree_obj.get(), this)) { // duplicate node exist in tree?
		// no.  OK to set this node
		basic_tree_type::set(*tree_obj.get());

		base_const_iterator it = tree_obj.begin(), it_end = tree_obj.end();
		for ( ; it != it_end; ++it ) { // insert any children
			insert(*it);
		}

		if ( tree_obj.pOrphans && allow_orphans() ) { // copy orphans if any present
			get_root()->pOrphans->set(*tree_obj.pOrphans );
		}  

	}
}


// insert(const stored_type&)
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
typename unique_tree<stored_type, node_compare_type, node_order_compare_type>::base_iterator 
unique_tree<stored_type, node_compare_type, node_order_compare_type>::insert(const stored_type& stored_obj) 
{ 
	const tree_type* pRoot = get_root();
	if ( allow_orphans() && pRoot->pOrphans ) { // orphans present?
		// yes.  check orphans for child
		base_iterator oit = pRoot->pOrphans->find_deep(stored_obj);
		if ( oit != pRoot->pOrphans->end() ) { 
			// child is an orphan.  update orphan with new data
			oit->set(stored_type(stored_obj));
			tree_type orphan;
			orphan.set(*oit.node());
			pRoot->pOrphans->erase(*oit->get());
			return insert(orphan);
		} 
	} 
	
	// stored obj doesn't already exist in an orphan
	if ( !check_for_duplicate(stored_obj, this)) { // check for duplication
		base_iterator it = basic_tree_type::insert(stored_obj, this);
		ordered_children.insert(it.node());  // no duplicate exists.  insert new node
		inform_grandparents(it.node(), this );
		return it;
	} else
		return basic_tree_type::end(); // duplicate node exists.  don't insert

}

// insert(stored_type*)
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
typename unique_tree<stored_type, node_compare_type, node_order_compare_type>::base_iterator 
unique_tree<stored_type, node_compare_type, node_order_compare_type>::insert(stored_type* pStored_obj)
{
	const tree_type* pRoot = get_root();
	if ( allow_orphans() && pRoot->pOrphans ) { // have orphans?
		// orphans present.  check orphans for child
		base_iterator oit = pRoot->pOrphans->find_deep(*pStored_obj);
		if ( oit != pRoot->pOrphans->end() ) {
			// child is an orphan.  update orphan with new data
			oit->set(*pStored_obj);
			tree_type orphan;
			orphan.set(*oit);
			pRoot->pOrphans->erase(*oit->get());
			return insert(orphan);
		} 
	} 

	// stored obj doesn't already exist in an orphan
	if ( !check_for_duplicate(*pStored_obj, this)) { // check for duplication
		base_iterator it = basic_tree_type::insert(pStored_obj, this);
		ordered_children.insert(it.node());  // no duplicate exists.  insert new node
		inform_grandparents(it.node(), this );
		return it;
	} else
		return basic_tree_type::end(); // duplicate node exists.  don't insert
}

// insert(const tree_type&)
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
typename unique_tree<stored_type, node_compare_type, node_order_compare_type>::base_iterator 
unique_tree<stored_type, node_compare_type, node_order_compare_type>::insert(const tree_type& tree_obj )
{
	if ( tree_obj.pOrphans && allow_orphans() ) { // have orphans?
		get_root()->pOrphans->insert(*tree_obj.pOrphans ); // yes.  copy orphans
	}  

	// insert current node
	base_iterator base_it = insert(*tree_obj.get());

	if ( base_it == basic_tree_type::end() ) { // insert successful?
		// no.  but, the node may have existed here previously.  check if so
		base_it = associative_tree_type::find(*tree_obj.get()); 
	}

	if ( base_it != basic_tree_type::end() ) {  // node exist?
		base_const_iterator it = tree_obj.begin();
		const base_const_iterator it_end = tree_obj.end();

		// call this function recursively to insert children and descendants
		for ( ; it != it_end; ++it )
			base_it->insert(*it);
	}
	return base_it;
}

// insert(const stored_type&, const stored_type&)
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
typename unique_tree<stored_type, node_compare_type, node_order_compare_type>::base_iterator 
unique_tree<stored_type, node_compare_type, node_order_compare_type>::insert( const stored_type& parent_obj, const stored_type& stored_obj)
{
	if ( tree_type(parent_obj) == *this ) { // is this node the parent?	
		return insert(stored_obj);  // yes.  insert the node here.
	}

	// find parent node
	base_iterator it, it_parent = find_deep(parent_obj);

	const tree_type* const pRoot = get_root();
	if ( it_parent != basic_tree_type::end() ) {
		// found parent node, 
		if ( allow_orphans() && pRoot->pOrphans ) {
			// orphans present.  check orphans for child
			base_iterator oit = pRoot->pOrphans->find_deep(stored_obj);
			if ( oit != pRoot->pOrphans->end() ) {
				// child is an orphan.  update orphan with new data
				oit->set(stored_type(stored_obj));
				tree_type orphan;
				orphan.set(*oit);
				pRoot->pOrphans->erase(*oit->get());
				it = it_parent->insert(orphan);
			} else
				it = it_parent->insert(stored_obj); // child not an orphan. inset child node in parent 
		} else {
			it = it_parent->insert(stored_obj); // no orphans.  insert child node in parent
		}
		if ( it == it_parent->end() ) // was node inserted successfully?
			return basic_tree_type::end(); // no.  return proper end()
	} else if (allow_orphans() ) { 
		// parent not found.  do we have orphans?
		if ( !pRoot->pOrphans ) {
			basic_tree_type::allocate_tree_type(pRoot->pOrphans, tree_type());  // no, instanciate them
		}

		base_iterator oit = pRoot->pOrphans->find_deep(parent_obj);

		// orphans contain parent?
		if ( oit == pRoot->pOrphans->end() ) {
			// no.  create parent in orphans
			oit = pRoot->pOrphans->insert(parent_obj);
			pRoot->pOrphans->ordered_children.clear();  // orphans need no ordered children
		} 

		base_iterator child_oit = pRoot->pOrphans->find_deep(stored_obj);
		if ( child_oit != pRoot->pOrphans->end() ) {
			// child is an orphan.  update orphan with new data
			child_oit->set(stored_type(stored_obj));
			tree_type orphan;
			orphan.set(*child_oit);
			pRoot->pOrphans->erase(*child_oit->get());
			it = oit->insert(orphan);
			oit->ordered_children.clear();
		} else {
			it = oit->insert(stored_obj); // child not an orphan.  insert child in parent orphan
			oit->ordered_children.clear();
		}

		if ( it == oit->end() ) // was child inserted as orphan?
			return basic_tree_type::end();  // no.  return proper end()
	} else {
		return basic_tree_type::end(); // couldn't find parent, and orphans not allowed
	}

	return it;
}


// find_deep(const stored_type&)
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
typename unique_tree<stored_type, node_compare_type, node_order_compare_type>::base_iterator 
unique_tree<stored_type, node_compare_type, node_order_compare_type>::find_deep(const stored_type& stored_obj) 
{
	tree_type tree_node(stored_obj);  // create seach node
	const typename std::set<tree_type*, deref_key_compare>::iterator desc_it = descendents.find(&tree_node);
	if (desc_it == descendents.end()) // node found in descendants?
		return basic_tree_type::end();  // no.  node not a descendant of this node

	// node is some type of descendant.  check if it's an immediate child
	base_iterator it = associative_tree_type::find(stored_obj);
	if ( it != basic_tree_type::end() )
		return it;

	// node not an immediate child.  
	it = basic_tree_type::begin();
	const base_iterator it_end = basic_tree_type::end();
	for ( ; it != it_end; ++it ) {  // iterate over children and call this fcn recursively
		const typename basic_tree_type::iterator grandchild_it = it->find_deep(stored_obj);
		if ( grandchild_it != it->end() ) 
			return grandchild_it;  // found it
	}

	return basic_tree_type::end();
}

// find_deep(const stored_type&) const
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
typename unique_tree<stored_type, node_compare_type, node_order_compare_type>::base_const_iterator 
unique_tree<stored_type, node_compare_type, node_order_compare_type>::find_deep(const stored_type& stored_obj) const
{
	base_const_iterator it_end = basic_tree_type::end();
	tree_type tree_node(stored_obj);  // create seach node
	typename std::set<tree_type*, deref_key_compare>::const_iterator desc_it = descendents.find(&tree_node);
	if (desc_it == descendents.end())  // node found in descendants?
		return it_end;  // no.  node not a descendant of this node

	// node is some type of descendant.  check if it's an immediate child
	base_const_iterator it = associative_tree_type::find(stored_obj);
	if ( it != it_end )
		return it;

	// node not an immediate child.  
	it = basic_tree_type::begin();
	for ( ; it != it_end; ++it ) { // iterate over children and call this fcn recursively
		base_const_iterator grandchild_it = it->find_deep(stored_obj);
		base_const_iterator grandchild_it_end = it->end();
		if ( grandchild_it != grandchild_it_end )
			return grandchild_it;  // found it
	}

	return it_end;
}


// clear()
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
void unique_tree<stored_type, node_compare_type, node_order_compare_type>::clear()
{
	// create descendant remove set
	std::set<tree_type*, deref_key_compare> remove_set;
	remove_set.swap(descendents);  // get a copy of the descendants, and clear them

	tree_type* pParent = basic_tree_type::parent();
	while ( pParent != 0 ) {  // climb up to the root node
		std::set<tree_type*, deref_key_compare> dest_set;  // create a difference set
		std::set_difference( pParent->descendents.begin(), pParent->descendents.end(),
			remove_set.begin(), remove_set.end(), std::inserter(dest_set, dest_set.begin()), deref_key_compare() );
		pParent->descendents.swap(dest_set);  // and remove the deleted descendants
		pParent = pParent->parent();
	}

	basic_tree_type::clear(); // call base class operation
	ordered_children.clear();
	descendents.clear();

	if ( pOrphans ) { // if this is the root, clear orphans also
		pOrphans->clear();
	}
}


// inform_grandparents(tree_type*, tree_type*)
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
void unique_tree<stored_type, node_compare_type, node_order_compare_type>::inform_grandparents( tree_type* new_child, tree_type* pParent  )
{
	if ( pParent) {  // traverse to root, adding new child to descendants to every node
		pParent->descendents.insert(new_child);
		inform_grandparents(new_child, pParent->parent());
	}
}

// find_ordered(const stored_type&)  
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
typename unique_tree<stored_type, node_compare_type, node_order_compare_type>::ordered_iterator 
unique_tree<stored_type, node_compare_type, node_order_compare_type>::find_ordered(const stored_type& stored_obj) 
{
	tree_type tree_node(stored_obj);  // search node
	return ordered_iterator(ordered_children.find(&tree_node));
}

// find_ordered(const stored_type&) const 
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
typename unique_tree<stored_type, node_compare_type, node_order_compare_type>::const_ordered_iterator 
unique_tree<stored_type, node_compare_type, node_order_compare_type>::find_ordered(const stored_type& stored_obj) const
{
	tree_type tree_node(stored_obj);  // search node
	return const_ordered_iterator(ordered_children.find(&tree_node));
}

// erase(const stored_type&)
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
bool unique_tree<stored_type, node_compare_type, node_order_compare_type>::
erase(const stored_type& stored_obj)
{
	base_iterator it = find_deep(stored_obj);  // see if node is a descendant
	if ( it != basic_tree_type::end() ) {
		tree_type* pParent = it->parent();  // it is.  get it's parent
		tree_type* pAncestor = pParent;

		while ( pAncestor ) {  // update all ancestors of removed child
			pAncestor->descendents.erase(it.node());
			pAncestor = pAncestor->parent();
		}

		tree_type* pNode = it.node();
		pParent->ordered_children.erase(pNode);
		dynamic_cast<associative_tree_type*>(pParent)->erase(*pNode->get()); // erase node

		return true;
	}

	return false;
}


// check_for_duplicate()
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
bool unique_tree<stored_type, node_compare_type, node_order_compare_type>::check_for_duplicate(const stored_type& stored_obj, const tree_type* pParent) const
{
	while ( pParent && !pParent->is_root() ) {  // find root node
		pParent = pParent->parent();
	}

	// check if node is root
	if ( tree_type(stored_obj) == *pParent )
		return true;  // node is root

	base_const_iterator it = pParent->find_deep(stored_obj);  // check if node is descendant of root
	base_const_iterator it_end = pParent->end();

	return ( it != it_end );  
}

// get_root()
template<typename stored_type, typename node_compare_type, typename node_order_compare_type>
const unique_tree<stored_type, node_compare_type, node_order_compare_type>*
unique_tree<stored_type, node_compare_type, node_order_compare_type>::get_root() const
{
	const tree_type* pParent = this;

	while ( pParent->parent() ) {  // traverse up to root
		pParent = pParent->parent();
	}

	return pParent;
}

