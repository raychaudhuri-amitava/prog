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
template<typename stored_type, typename node_compare_type, typename node_order_compare_type >
class unique_tree;

// deref comparison functor, derive from binary function per Scott Meyer
template<typename stored_type, typename node_compare_type, typename node_order_compare_type >
struct unique_tree_deref_less : public std::binary_function<const unique_tree<stored_type, node_compare_type, node_order_compare_type>*, const unique_tree<stored_type, node_compare_type, node_order_compare_type>*, bool>
{
	bool operator () (const unique_tree<stored_type, node_compare_type, node_order_compare_type>* lhs, const unique_tree<stored_type, node_compare_type, node_order_compare_type>* rhs) const
	{
		// call < on actual object
		return (*lhs < *rhs);
	}
};


// instanciates base_tree_type with type of container (set of unique_tree ptrs) to use for node and key comparisons
template<typename stored_type, typename node_compare_type = std::less<stored_type>, typename node_order_compare_type = node_compare_type >
class unique_tree : public associative_tree<stored_type, unique_tree<stored_type, node_compare_type, node_order_compare_type>,  std::set<unique_tree<stored_type, node_compare_type, node_order_compare_type>*, unique_tree_deref_less<stored_type, node_compare_type, node_order_compare_type> > >
{
	public:
	// typedefs
		typedef unique_tree<stored_type, node_compare_type, node_order_compare_type> tree_type;
		typedef basic_tree<stored_type, unique_tree<stored_type, node_compare_type, node_order_compare_type>,  std::set<unique_tree<stored_type, node_compare_type, node_order_compare_type>*, unique_tree_deref_less<stored_type, node_compare_type, node_order_compare_type> > > basic_tree_type;
		typedef associative_tree<stored_type, unique_tree<stored_type, node_compare_type, node_order_compare_type>,  std::set<unique_tree<stored_type, node_compare_type, node_order_compare_type>*, unique_tree_deref_less<stored_type, node_compare_type, node_order_compare_type> > > associative_tree_type;
		typedef std::set<unique_tree<stored_type, node_compare_type, node_order_compare_type>*, unique_tree_deref_less<stored_type, node_compare_type, node_order_compare_type> > container_type;
		friend class basic_tree<stored_type, unique_tree<stored_type, node_compare_type, node_order_compare_type>,  std::set<unique_tree<stored_type, node_compare_type, node_order_compare_type>*, unique_tree_deref_less<stored_type, node_compare_type, node_order_compare_type> > >;
		typedef typename basic_tree_type::iterator base_iterator;
		typedef typename basic_tree_type::const_iterator base_const_iterator;
		typedef unique_tree_deref_less<stored_type, node_compare_type, node_order_compare_type> deref_key_compare;

	// constructors/destructor
		unique_tree() : associative_tree_type(), pOrphans(0), allowing_orphans(false)  {}
		explicit unique_tree( const stored_type& stored_obj ) : associative_tree_type(stored_obj), pOrphans(0), allowing_orphans(false) {}
		unique_tree( const tree_type& rhs ); // copy constructor
		~unique_tree() { clear(); if ( pOrphans ) basic_tree_type::deallocate_tree_type(pOrphans); }

	// less operator.  since data's stored as a ptr, use a dereference less
		friend bool operator < (const tree_type& lhs, const tree_type& rhs) { return node_compare_type()(*lhs.get(), *rhs.get()); }
	// == operator.
		friend bool operator == (const tree_type& lhs, const tree_type& rhs) 
			{ return !(lhs < rhs) && !(rhs < lhs); }
	// assignment operator
		tree_type& operator = (const tree_type& rhs);

	// deref less for ordered children set
		struct deref_ordered_compare
		{
			bool operator() (const tree_type* lhs, const tree_type* rhs) const { return node_order_compare_type() (*lhs->get(), *rhs->get()); }
		};
		friend struct deref_ordered_compare;

		// define iterators inline
		class const_ordered_iterator : public std::iterator<std::bidirectional_iterator_tag, tree_type*>
		{
		public:
			// typedefs
			typedef std::multiset<tree_type*, deref_ordered_compare> ordered_container_type;

			// constructors/destructor
			const_ordered_iterator() {}
			explicit const_ordered_iterator(typename ordered_container_type::const_iterator it_) : it(it_) {}
			virtual ~const_ordered_iterator() {}

			// overloaded operators
			friend bool operator != ( const const_ordered_iterator& lhs, const const_ordered_iterator& rhs ) { return lhs.it != rhs.it; }
			friend bool operator == ( const const_ordered_iterator& lhs, const const_ordered_iterator& rhs ) { return lhs.it == rhs.it; }
			const_ordered_iterator& operator ++() { ++it; return *this; }
			const_ordered_iterator operator ++(int) { const_ordered_iterator old(*this); ++*this; return old; }
			const_ordered_iterator& operator --() { --it; return *this; }
			const_ordered_iterator operator --(int) { const_ordered_iterator old(*this); --*this; return old; }
			const tree_type& operator*() const { return  *it.operator *(); }
			const tree_type* operator->() const { return *it.operator ->(); }

			const tree_type* node() const { return *it; }

			// data
		protected:
			typename ordered_container_type::const_iterator it;
		};

		class ordered_iterator : public const_ordered_iterator
		{
		public:
			using const_ordered_iterator::it;
			// constructors/destructor
			ordered_iterator() {}
			explicit ordered_iterator(typename const_ordered_iterator::ordered_container_type::const_iterator it_) : const_ordered_iterator(it_) {}
			virtual ~ordered_iterator() {}

			// overloaded operators
			tree_type& operator*() { return *it.operator *(); }
			tree_type* operator->() { return *it.operator ->(); }
			ordered_iterator& operator ++() { ++it; return *this; }
			ordered_iterator operator ++(int) { ordered_iterator old(*this); ++*this; return old; }
			ordered_iterator& operator --() { --it; return *this; }
			ordered_iterator operator --(int) { ordered_iterator old(*this); --*this; return old; }

			base_iterator insert(const stored_type& stored_obj) const { return (*it)->insert(stored_obj); }
			tree_type* node() { return *it; }
		};

	// public interface
	public:
		base_iterator insert(const stored_type& stored_obj);
		base_iterator insert(const tree_type& tree_obj );

		base_iterator insert( const stored_type& parent_obj, const stored_type& stored_obj);
		void set(const stored_type& stored_obj) { basic_tree_type::set(stored_obj); }
		void set(const tree_type& tree_obj);

		base_iterator find_deep(const stored_type& stored_obj);
		base_const_iterator find_deep(const stored_type& stored_obj) const;

		const_ordered_iterator ordered_begin() const { return const_ordered_iterator(ordered_children.begin()); }
		const_ordered_iterator ordered_end() const { return const_ordered_iterator(ordered_children.end()); }
		ordered_iterator ordered_begin() { return ordered_iterator(ordered_children.begin()); }
		ordered_iterator ordered_end() { return ordered_iterator(ordered_children.end()); }
		ordered_iterator find_ordered(const stored_type& stored_obj);
		const_ordered_iterator find_ordered(const stored_type& stored_obj) const;
		bool erase(const stored_type& stored_obj);
		void erase(const typename basic_tree_type::iterator& it) { basic_tree_type::erase(it); }
		void clear();
		bool allow_orphans() const { return get_root()->allowing_orphans; }
		void allow_orphans(bool allow) { get_root()->allowing_orphans = allow; }
		const tree_type* get_orphans() const { return get_root()->pOrphans; }
		bool is_orphan() const { const tree_type* root = get_root(); return (!root->empty() && root->ordered_children.empty()); }

	private:
		base_iterator insert(stored_type* pStored_obj);
		void inform_grandparents( tree_type* pNew_child, tree_type* pParent );
		bool check_for_duplicate(const stored_type& stored_obj, const tree_type* pParent) const;
		const tree_type* get_root() const;

	// data
	private:
		mutable std::set<tree_type*, deref_key_compare > descendents;
		std::multiset<tree_type*, deref_ordered_compare> ordered_children;
		mutable tree_type* pOrphans;
		mutable bool allowing_orphans;
};

#include "unique_tree.inl"
