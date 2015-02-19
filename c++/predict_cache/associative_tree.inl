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

// find(const stored_type&)
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
typename basic_tree<stored_type, tree_type, container_type, alloc>::iterator 
associative_tree<stored_type, tree_type, container_type, alloc>::find(const stored_type& stored_obj) 
{
	tree_type node_obj(stored_obj); // create a search node and search local children
	typename basic_tree_type::iterator it(basic_tree_type::children.find(&node_obj), this);
	return it;
}

// find(const stored_type&) const
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
typename basic_tree<stored_type, tree_type, container_type, alloc>::const_iterator 
associative_tree<stored_type, tree_type, container_type, alloc>::find(const stored_type& stored_obj) const
{
	tree_type node_obj(stored_obj);
	typename basic_tree_type::const_iterator it(basic_tree_type::children.find(&node_obj), this);
	return it;
}


// erase(const stored_type&)
template< typename stored_type, typename tree_type, typename container_type, typename alloc >
bool associative_tree<stored_type, tree_type, container_type, alloc>::
erase(const stored_type& stored_obj)
{
	bool erased_nodes = false;
	tree_type node_obj(stored_obj); // create search node
	typename container_type::iterator it = basic_tree_type::children.find(&node_obj);

	while ( it != basic_tree_type::children.end() ) { // could be multiple nodes (with multitree)
		deallocate_tree_type(*it); // delete node and remove from children
		basic_tree_type::children.erase(it);  
		it = basic_tree_type::children.find(&node_obj);  // any more?
		erased_nodes = true;
	}
	return erased_nodes;
	
}
