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
// static member variable definition
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
typename basic_tree<stored_type, tree_type, container_type, alloc>::tClone_fcn
basic_tree<stored_type, tree_type, container_type, alloc>::pClone_fcn = 0;

// constructor
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
basic_tree<stored_type, tree_type, container_type, alloc>::basic_tree(const stored_type& stored_obj) 
:	children(container_type()), pData(), pParent_node(0)
{
	// use clone function if available
	pData = stored_obj;
}


// copy constructor
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
basic_tree<stored_type, tree_type, container_type, alloc>::basic_tree(const basic_tree_type& rhs) 
:	children(container_type()), pData(), pParent_node(0)
{
	pParent_node = 0; // new tree obj is always root node
	set(*rhs.get()); // set data obj
}

// assignment operator
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
basic_tree<stored_type, tree_type, container_type, alloc>&
        basic_tree<stored_type, tree_type, container_type, alloc>::operator = (const basic_tree_type& rhs)
{
	if ( &rhs == this )
		return *this;

	pParent_node = 0; // new tree obj is always root node
	set(*rhs.get());  // set data obj

	return *this;
}

// destructor
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
basic_tree<stored_type, tree_type, container_type, alloc>::~basic_tree()
{
}

// insert(const stored_type&, tree_type*)
template< typename stored_type, typename tree_type, typename set_container_type, typename alloc >
typename basic_tree<stored_type, tree_type, set_container_type, alloc>::iterator 
basic_tree<stored_type, tree_type, set_container_type, alloc>::insert( const stored_type& stored_obj, tree_type* pParent )
{
	// create a new tree_type object to hold the node object
	tree_type* pNew_node; 
	allocate_tree_type(pNew_node, tree_type(stored_obj));
	pNew_node->set_parent(pParent);

	const typename set_container_type::size_type sz = children.size();

	// insert the tree node into the children container
	const typename set_container_type::iterator it = children.insert(children.end(), pNew_node);

	if ( sz == children.size() ) { // check for successful insertion
		deallocate_tree_type(pNew_node);  // not successful.  delete new node and return end()
		return iterator(children.end(), this);
	}

	return iterator(it, this);
}

// insert(stored_type*, tree_type*)
template< typename stored_type, typename tree_type, typename set_container_type, typename alloc >
typename basic_tree<stored_type, tree_type, set_container_type, alloc>::iterator 
basic_tree<stored_type, tree_type, set_container_type, alloc>::insert(stored_type* pStored_obj, tree_type* pParent)
{
	// create a new tree_type object to hold the node object
	tree_type* pNew_node; 
	allocate_tree_type(pNew_node, tree_type(*pStored_obj));
	pNew_node->pParent_node = pParent;

	typename set_container_type::size_type sz = children.size();

	// insert the tree node into the children container
	typename set_container_type::iterator it = children.insert(children.end(), pNew_node);

	if ( sz == children.size() ) { // check for successful insertion
		deallocate_tree_type(pNew_node);  // not successful.  delete new node and return end()
		return iterator(children.end());
	}

	return iterator(it);
}
// for each (function)
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
void basic_tree<stored_type, tree_type, container_type, alloc>::for_each( void (*pFcn)(stored_type&) )
{
	pFcn(*get());  // call function with node
	pre_order_iterator it = pre_order_begin(), it_end = pre_order_end();

	for ( ; it != it_end; ++it ) { // then call function with all descendants
		pFcn(*it.node()->get());
	}
}

// insert(const tree_type&, tree_type*)
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
typename basic_tree<stored_type, tree_type, container_type, alloc>::iterator 
basic_tree<stored_type, tree_type, container_type, alloc>::insert(const tree_type& tree_obj, tree_type* pParent)
{
	// insert current node
	iterator base_it = pParent->insert(*tree_obj.get());

	if ( base_it != pParent->end() ) {
		const_iterator it = tree_obj.begin();
		const const_iterator it_end = tree_obj.end();

		// call this function recursively thru derived tree for children
		for ( ; it != it_end; ++it )
			base_it->insert(*it);
	}
	return base_it;
}

// set(const tree_type&, tree_type*)
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
void basic_tree<stored_type, tree_type, container_type, alloc>::set(const tree_type& tree_obj, tree_type* pParent)
{
	set(*tree_obj.get()); // set data for this node

	const_iterator it = tree_obj.begin();
	const const_iterator it_end = tree_obj.end();
	for ( ; it != it_end; ++it ) { // and insert all descendants of passed tree
		insert(*it, pParent );
	}
}

// set(stored_type&)
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
void  basic_tree<stored_type, tree_type, container_type, alloc>::set(const stored_type& stored_obj) 
{ 
	pData = stored_obj;
}

// clear()
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
void basic_tree<stored_type, tree_type, container_type, alloc>::clear()
{
	iterator it = begin();
	const iterator it_end = end();
	for ( ; it != it_end; ++it )
	{
		deallocate_tree_type(it.node()); // delete all child nodes
	}
	children.clear();  // and remove them from set
}

// erase(iterator)
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
void basic_tree<stored_type, tree_type, container_type, alloc>::erase(iterator it) 
{ 
	// clear children
	it->clear(); 
	deallocate_tree_type(it.node());

	const iterator beg_it = begin();
	typename container_type::iterator pos_it = children.begin();
	for ( ; it != beg_it; --it, ++pos_it) ;  // get child iterator position

	children.erase(pos_it);
}
