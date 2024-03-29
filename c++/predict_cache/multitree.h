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
#include "associative_tree.h"
#include <set>

// forward declaration for deref comparison functor
template<typename stored_type, typename node_compare_type >
class multitree;

// deref comparison functor, derive from binary function per Scott Meyer
template<typename stored_type, typename node_compare_type >
struct multitree_deref_less : public std::binary_function<const multitree<stored_type, node_compare_type>*, const multitree<stored_type, node_compare_type>*, bool>
{
	bool operator () (const multitree<stored_type, node_compare_type>* lhs, const multitree<stored_type, node_compare_type>* rhs) const
	{
		// call < on actual object
		return (*lhs < *rhs);
	}
};

// node object type.  forwards most operations to base_tree_type, 
// instanciates base_tree_type with type of container (set of unique_tree ptrs) to use for node and key comparisons
template<typename stored_type, typename node_compare_type = std::less<stored_type> >
class multitree : public associative_tree<stored_type, multitree<stored_type, node_compare_type>,  std::multiset<multitree<stored_type, node_compare_type>*, multitree_deref_less<stored_type, node_compare_type> > >
{
public:
	// typedefs
	typedef multitree<stored_type, node_compare_type> tree_type;
	typedef basic_tree<stored_type, multitree<stored_type, node_compare_type>,  std::multiset<multitree<stored_type, node_compare_type>*, multitree_deref_less<stored_type, node_compare_type> > > basic_tree_type;
	typedef associative_tree<stored_type, multitree<stored_type, node_compare_type>,  std::multiset<multitree<stored_type, node_compare_type>*, multitree_deref_less<stored_type, node_compare_type> > > associative_tree_type;
	friend class basic_tree<stored_type, multitree<stored_type, node_compare_type>,  std::multiset<multitree<stored_type, node_compare_type>*, multitree_deref_less<stored_type, node_compare_type> > >;

	// constructors/destructor
	multitree() : associative_tree_type() {}
	explicit multitree( const stored_type& stored_obj ) : associative_tree_type(stored_obj) {}
	multitree( const tree_type& rhs ); // copy constructor
	~multitree() { basic_tree_type::clear(); }

	// less operator.  since data's stored as a ptr, use a dereference less
	friend bool operator < (const tree_type& lhs, const tree_type& rhs) { return node_compare_type()(*lhs.get(), *rhs.get()); }
	// assignment operator
	tree_type& operator = (const tree_type& rhs);

	// public interface
public:
	typename basic_tree_type::iterator insert(const stored_type& stored_obj) { return basic_tree_type::insert(stored_obj, this); }
	typename basic_tree_type::iterator insert(const tree_type& tree_obj ) { return basic_tree_type::insert(tree_obj, this); }
	void set(const tree_type& tree_obj) { basic_tree_type::set(tree_obj, this); }
	void set(const stored_type& stored_obj) { basic_tree_type::set(stored_obj); }

};


#include "multitree.inl"
