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
#include "basic_tree.h"
#include <vector>
#include <algorithm>
#include <stdexcept>

template<typename stored_type>
class sequential_tree : public basic_tree<stored_type, sequential_tree<stored_type>, std::vector<sequential_tree<stored_type>* > >
{
public:
	// typedefs
	typedef sequential_tree<stored_type> tree_type;
	typedef std::vector<sequential_tree<stored_type>*> container_type;
	typedef basic_tree<stored_type, tree_type, container_type > basic_tree_type;
	typedef bool (*pPred)(const stored_type& lhs, const stored_type& rhs);

	// constructors/destructor
	sequential_tree() : basic_tree_type(stored_type()) {}
	explicit sequential_tree(const stored_type& stored_obj) : basic_tree_type(stored_obj) {}
	sequential_tree(const sequential_tree<stored_type>& rhs);  // copy constructor
	~sequential_tree() { basic_tree_type::clear(); }

	// assignment operator
	tree_type& operator = (const tree_type& rhs);

	// public interface
	typename basic_tree_type::iterator insert(const stored_type& stored_obj) { return basic_tree_type::insert(stored_obj, this); }
	typename basic_tree_type::iterator insert(const tree_type& tree_obj ) { return basic_tree_type::insert(tree_obj, this); }
	void set(const tree_type& tree_obj) { basic_tree_type::set(tree_obj, this); }
	void set(const stored_type& stored_obj) { basic_tree_type::set(stored_obj); }

	// insert(const_iterator, const stored_type&)
	typename basic_tree_type::iterator insert(typename basic_tree_type::const_iterator insert_before, const stored_type& stored_obj)
	{
		// create a new tree_type object to hold the node object
		tree_type* pNew_node = 0; 
		basic_tree_type::allocate_tree_type(pNew_node, tree_type(stored_obj));
		pNew_node->set_parent(this);

		const typename container_type::size_type sz = basic_tree_type::children.size();

		// calculate the insertion point
		const typename basic_tree_type::const_iterator beg_it = basic_tree_type::begin();
		typename container_type::iterator pos_it = basic_tree_type::children.begin(); 
		for ( ; insert_before != beg_it; --insert_before, ++pos_it) ;
		// insert the tree node into the children container
		const typename container_type::iterator it = basic_tree_type::children.insert(pos_it, pNew_node);

		if ( sz == basic_tree_type::children.size() ) { // check for successful insertion
			basic_tree_type::deallocate_tree_type(pNew_node);  // not successful.  delete new node and return end()
			typename basic_tree_type::iterator end_it(basic_tree_type::children.end(), this);
			return end_it;
		}

		typename basic_tree_type::iterator node_it(it, this);
		return node_it;
	}
	
	// insert(const_iterator, const tree_type&)
	typename basic_tree_type::iterator insert(typename basic_tree_type::const_iterator insert_before, const tree_type& tree_obj)
	{
		// insert current node
		typename basic_tree_type::iterator base_it = insert(insert_before, *tree_obj.get());

		if ( base_it != basic_tree_type::end() ) {
			typename basic_tree_type::const_iterator it = tree_obj.begin(), it_end = tree_obj.end();

			// call this function recursively thru derived tree for children
			for ( ; it != it_end; ++it )
				base_it->insert(*it);
		}
		return base_it;
	}

	// children sort operations
	template<typename T> void sort(const T& sort_functor) { std::sort(basic_tree_type::children.begin(), basic_tree_type::children.end(), sort_functor_deref<T>(sort_functor)); }
	void sort() { std::sort(basic_tree_type::children.begin(), basic_tree_type::children.end(), sort_deref()); }
	void sort(const pPred& predicate) { std::sort(basic_tree_type::children.begin(), basic_tree_type::children.end(), sort_pred_deref(predicate)); }
	tree_type& operator [](int index) 
	{ 
		if ( index < 0 || index >= basic_tree_type::size())
			throw std::out_of_range("sequential_tree index out of range");

		typename basic_tree_type::iterator it = basic_tree_type::begin(); 
		for (int i = 0; i < index; ++i) 
			++it;
		
		return *it; }
	const tree_type& operator [](int index) const 
	{ 
		if ( index < 0 || index >= basic_tree_type::size())
			throw std::out_of_range("sequential_tree index out of range");

		typename basic_tree_type::const_iterator it = basic_tree_type::begin(); 
		for (int i = 0; i < index; ++i) 
			++it;
		
		return *it; }

	// descendant sort operations
	template<typename T> void sort_descendants(const T& sort_functor)
	{
		sort(sort_functor);
		typename tree_type::post_order_iterator it = basic_tree_type::post_order_begin(), it_end = basic_tree_type::post_order_end();
		for ( ; it != it_end; ++it )
		{
			it->sort(sort_functor);
		}
	}

	void sort_descendants() 
	{
		sort();
		typename tree_type::post_order_iterator it = basic_tree_type::post_order_begin();
		const typename tree_type::post_order_iterator it_end = basic_tree_type::post_order_end();
		for ( ; it != it_end; ++it )
		{
			it->sort();
		}
	}

	void sort_descendants(const pPred& predicate)
	{
		sort(predicate);
		typename tree_type::post_order_iterator it = basic_tree_type::post_order_begin(), it_end = basic_tree_type::post_order_end();
		for ( ; it != it_end; ++it )
		{
			it->sort(predicate);
		}
	}


private:
	// sort() dereference functor
	struct sort_deref
	{
		bool operator() (const tree_type* lhs, const tree_type* rhs)
		{
			return *lhs->get() < *rhs->get();
		}
	};

	// sort(predicate) dereference functor
	struct sort_pred_deref
	{
		explicit sort_pred_deref(const pPred& predicate_) : predicate(predicate_) {}
		bool operator() (const tree_type* lhs, const tree_type* rhs)
		{
			return predicate(*lhs->get(), *rhs->get());
		}

		pPred predicate;
	};

	// sort<T>() dereference functor
	template<typename T>
	struct sort_functor_deref 
	{
		explicit sort_functor_deref(const T& sort_functor_) : sort_functor(sort_functor_) {}
		bool operator() (const tree_type* lhs, const tree_type* rhs) const
		{
			return sort_functor(*lhs->get(), *rhs->get());
		}
		sort_functor_deref& operator = (const sort_functor_deref& rhs) { sort_functor = rhs->sort_functor; return *this; }
		const T& sort_functor;
	};
};

#include "sequential_tree.inl"
