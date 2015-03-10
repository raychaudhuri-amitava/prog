/*******************************************************************************
Tree Container Library: Generic container library to store data in tree-like structures.
Copyright (c) 2006  Mitchel Haas

This software is provided 'as-is', without any express or implied warranty. 
In no event will the author be held liable for any damages arising from 
the use of this software.

Permission is granted to anyone to use this software for any purpose, 
including commercial applications, and to alter it and redistribute it freely, 
subject to the following restrictions:

1.  The origin of this software must not be misrepresented; 
    you must not claim that you wrote the original software. 
    If you use this software in a product, an acknowledgment in the product 
    documentation would be appreciated but is not required.

2.  Altered source versions must be plainly marked as such, 
    and must not be misrepresented as being the original software.

3.  The above copyright notice and this permission notice may not be removed 
    or altered from any source distribution.

Email questions, comments or suggestions to mhaas@datasoftsolutions.net
*******************************************************************************/

#include <set>
#include <stack>
#include <queue>
#include <algorithm>

#include <stdexcept>

#include <set>

#include<vector>
#include <iostream>

using namespace std;

//#include <boost/serialization/set.hpp>
//#include <boost/serialization/split_member.hpp>

// stored_type:         type stored in container
// tree_type:           one of three tree types derived from this base
// container_type:      type of contain to hold children (can be set or multiset)

template< typename stored_type, typename tree_type,  typename container_type, typename alloc = std::allocator<stored_type> >
class basic_tree 
{
    public:
    // typedefs
        typedef basic_tree<stored_type, tree_type, container_type, alloc> basic_tree_type;
        typedef stored_type* (*tClone_fcn) (const stored_type&);
        typedef typename alloc::template rebind<tree_type>::other TreeAlloc;
    

    protected:
    // constructors/destructor
        basic_tree() : pData(), pParent_node(0)  {}
        explicit basic_tree(const stored_type& stored_obj);
        basic_tree(const basic_tree_type& rhs);  // copy constructor
        ~basic_tree();

    public:
    // child iterator definitions
        class const_iterator : public std::iterator<std::bidirectional_iterator_tag, tree_type*>
        {
            public:
            // typedefs
                typedef class basic_tree<stored_type, tree_type, container_type, alloc> basic_tree_type;

            // constructors/destructor
                const_iterator() {}
                explicit const_iterator(typename container_type::const_iterator it_, const basic_tree_type* pParent_) : it(it_), pIt_parent(pParent_) {}
                virtual ~const_iterator() {}

            // overloaded operators
                friend bool operator != ( const const_iterator& lhs, const const_iterator& rhs )  { return !(lhs == rhs); }
                friend bool operator == ( const const_iterator& lhs, const const_iterator& rhs )  { return lhs.pIt_parent == rhs.pIt_parent && lhs.it == rhs.it; }

                const tree_type& operator*() const { return  **it; }
                const tree_type* operator->() const { return *it; }

                const_iterator& operator ++() { ++it; return *this; }
                const_iterator operator ++(int) { const_iterator old(*this); ++*this; return old; }
                const_iterator& operator --() { --it; return *this; }
                const_iterator operator --(int) { const_iterator old(*this); --*this; return old; }

            // public interface
                const tree_type* node() { return *it; }

            // data
            protected:
                typename container_type::const_iterator it;
                const basic_tree_type* pIt_parent;
        };

        class iterator : public const_iterator
        {
        protected:
                using const_iterator::it;
        public:
            // constructors/destructor
                iterator() {}
                explicit iterator(typename container_type::iterator it_, basic_tree_type* pParent_) : const_iterator(it_, pParent_) {}
                virtual ~iterator() {}

            // overloaded operators
                tree_type& operator*() { return **it; }
                tree_type* operator->() { return *it; }
                iterator& operator ++() { ++it;  return *this; }
                iterator operator ++(int) { iterator old(*this); ++*this; return old; }
                iterator& operator --() { --it; return *this; }
                iterator operator --(int) { iterator old(*this); --*this; return old; }

            // public interface
                tree_type* node() { return *it; }
        };
        typedef iterator basic_tree_iterator;  // needed for descendant constructor specification problems

        // descendent tree iterator definitions

        class const_pre_order_iterator : public std::iterator<std::bidirectional_iterator_tag, tree_type*>
        {
        public:
            // constructors/destructor
            const_pre_order_iterator() {}
            virtual ~const_pre_order_iterator() {}
        protected:
            explicit const_pre_order_iterator(const basic_tree_type* pTop_node_) { it = pTop_node_->begin(); pTop_node = pTop_node_; }
            explicit const_pre_order_iterator(const_iterator& it_) : it(it_) {}

        public:
            // overloaded operators
            friend bool operator != ( const const_pre_order_iterator& lhs, const const_pre_order_iterator& rhs ) { return lhs.it != rhs.it; }
            friend bool operator == ( const const_pre_order_iterator& lhs, const const_pre_order_iterator& rhs ) { return lhs.it == rhs.it; }
            const_pre_order_iterator& operator ++() { return incr(); }
            const_pre_order_iterator operator ++(int) { const_pre_order_iterator old(*this); ++*this; return old; }
            const_pre_order_iterator& operator --() { return decr(); }
            const_pre_order_iterator operator --(int) { const_pre_order_iterator old(*this); --*this; return old; }

            // public interface
            const tree_type& operator*() const { return  it.operator *(); }
            const tree_type* operator->() const { return it.operator ->(); }
            const tree_type* node() { return it.node(); }
            friend class basic_tree<stored_type, tree_type, container_type, alloc>;
        private:
            const_pre_order_iterator& incr()
            {
                if ( !it->empty() ) { // any children?
                    node_stack.push(it); // yes. push current pos
                    it = node()->begin(); // and goto first child
                } else {
                    ++it; // no children. incr to next sibling if present
                    // while stack not empty and no next sibling
                    while ( !node_stack.empty() && it == (node_stack.top())->end() ) {
                        it = node_stack.top(); // pop parent
                        node_stack.pop();
                        ++it; // and see if it's got a next sibling
                    }
                }
                return *this; 
            }
            const_pre_order_iterator& decr()
            {
                if ( it == pTop_node->end() ) { // at end?
                    // yes. need to set up stack to state just before end
                    rit = pTop_node->children.rbegin(); // going backwards
                    if ( rit != pTop_node->children.rend() ) { // insure there's children
                        if ( !(*rit)->empty() ) { // last node have children?
                            do {  // find the last child of this node
                                ++rit; // incr reverse iter..
                                it = const_iterator(rit.base(), node()); // ..to convert to fwd iter correctly
                                node_stack.push(it); // push parents on the way down
                                rit = node()->children.rbegin(); // get last child again
                            } while ( !(*rit)->empty() ); // while last child has children
                            ++rit; // incr reverse iter
                            it = const_iterator(rit.base(), node()); // to convert to forward iter correctly
                        }
                    }
                } else { // not at end.
                    if ( it != node()->parent()->begin() ) { // is this first sibling?
                        --it; // no.  ok to decr to next sibling
                        if (!it->empty()) { // children present?
                            do { // yes.  get deepest last child
                                node_stack.push(it); // first push current 
                                it = const_iterator(node()->children.end(), node());
                                --it;  // then go to last child
                            } while ( !it->empty() ); // while children present
                        }
                    } else { // first sibling
                        it = node_stack.top(); // just need to goto parent
                        node_stack.pop();
                    }
                }
                return *this;
            }

            // data
        protected:
            std::stack<const_iterator> node_stack;   
            const basic_tree_type* pTop_node;
            const_iterator it;
            typename container_type::const_reverse_iterator rit;
        };
        
        class pre_order_iterator : public const_pre_order_iterator
        {
        public:
            using const_pre_order_iterator::it;
            // constructors/destructor
            pre_order_iterator() {}
            virtual ~pre_order_iterator() {}
        protected:
            explicit pre_order_iterator( basic_tree_type* pTop_node_) : const_pre_order_iterator(pTop_node_) {}
            explicit pre_order_iterator(basic_tree_iterator& it_) : const_pre_order_iterator(it_) {}

        public:
            // overloaded operators
            pre_order_iterator& operator ++() { ++(*static_cast<const_pre_order_iterator*>(this)); return *this; }
            pre_order_iterator operator ++(int) { pre_order_iterator old(*this); ++*this; return old; }
            pre_order_iterator& operator --() { --(*static_cast<const_pre_order_iterator*>(this)); return *this; }
            pre_order_iterator operator --(int) { pre_order_iterator old(*this); --*this; return old; }

            // public interface
            tree_type& operator*() { return  const_cast<tree_type&>(it.operator *()); }
            tree_type* operator->() { return const_cast<tree_type*>(it.operator ->()); }
            tree_type* node() { return const_cast<tree_type*>(it.node()); }
            friend class basic_tree<stored_type, tree_type, container_type, alloc>;
        };

        class const_post_order_iterator : public std::iterator<std::bidirectional_iterator_tag, tree_type*>
        {
        public:
            // constructors/destructor
            const_post_order_iterator() {}
            virtual ~const_post_order_iterator() {}
        protected:
            explicit const_post_order_iterator(const basic_tree_type* pTop_node_) { init(pTop_node_); }
            explicit const_post_order_iterator(const_iterator& it_) : it(it_) {}

        public:
            // overloaded operators
            friend bool operator != ( const const_post_order_iterator& lhs, const const_post_order_iterator& rhs ) { return lhs.it != rhs.it; }
            friend bool operator == ( const const_post_order_iterator& lhs, const const_post_order_iterator& rhs ) { return lhs.it == rhs.it; }
            const_post_order_iterator& operator ++() { return incr(); }
            const_post_order_iterator operator ++(int) { const_post_order_iterator old(*this); ++*this; return old; }
            const_post_order_iterator& operator --() { return decr(); }
            const_post_order_iterator operator --(int) { const_post_order_iterator old(*this); --*this; return old; }

            // public interface
            const tree_type& operator*() const { return  it.operator *(); }
            const tree_type* operator->() const { return it.operator ->(); }
            const tree_type* node() { return it.node(); }
            friend class basic_tree<stored_type, tree_type, container_type, alloc>;

        private:
            void init(const basic_tree_type* pTop_node_)
            {
                pTop_node = pTop_node_; // save invoked node
                it = pTop_node->begin(); // goto first child
                if ( !it->empty() ) { // have children of it's own?
                    do {  // goto deepest first child, while pushing parents
                        node_stack.push(it);
                        it = node()->begin();
                    } while ( !it->empty() );
                }
            }

            const_post_order_iterator& incr()
            {
                const_iterator it_end = node()->parent()->end(); // end sibling
                ++it; // advance to next sibling, if present
                if ( it != it_end && !it->empty() ) { // next sibling present, and has children?
                    do {  // goto deepest first child while pushing parents
                        node_stack.push(it);
                        it = node()->begin();
                    } while ( !it->empty() );
                } else { // it is past last sibling, or it has no children
                    // if valid it and it has no childrent, were done
                    if ( !node_stack.empty() && it == (node_stack.top())->end() ) {
                        // it is past last sibling, and pushed parents exist.  move back up to parent
                        it = node_stack.top();
                        node_stack.pop();
                    }
                }
                return *this;
            }

            const_post_order_iterator& decr()
            {
                if ( it == pTop_node->end() ) { // at end?
                    typename container_type::const_reverse_iterator rit = pTop_node->children.rbegin();
                    ++rit;
                    it = const_iterator(rit.base(), pTop_node); // goto last sibling of top node
                } else { // not at end
                    if ( !node()->empty() ) { // children present?
                        typename container_type::const_reverse_iterator rit = node()->children.rbegin();
                        node_stack.push(it);
                        ++rit; // push parent and go to last child
                        it = const_iterator(rit.base(), node());
                    } else { // no children present
                        if ( it != node()->parent()->begin() ) { // at first sibling?
                            --it; // no.  just goto prev sibling
                        } else { // at first sibling. work our way up until not first sibling
                            while ( !node_stack.empty() && it == node_stack.top()->begin())
                            {
                                it = node_stack.top();
                                node_stack.pop();
                            }
                            --it; // then goto prev sibling
                        }
                    }
                }
                return *this;
            }

            // data
        protected:
            std::stack<const_iterator> node_stack;   
            const basic_tree_type* pTop_node;
            const_iterator it;
            typename container_type::const_reverse_iterator rit;
        };


        class post_order_iterator : public const_post_order_iterator
        {
        public:
            using const_post_order_iterator::it;
            // constructors/destructor
            post_order_iterator() {}
            virtual ~post_order_iterator() {}
        protected:
            explicit post_order_iterator(basic_tree_type* pTop_node_) : const_post_order_iterator(pTop_node_) { }
            explicit post_order_iterator(basic_tree_iterator& it_) : const_post_order_iterator(it_) {}

        public:
            // overloaded operators
            post_order_iterator& operator ++() { ++(*static_cast<const_post_order_iterator*>(this)); return *this; }
            post_order_iterator operator ++(int) { post_order_iterator old(*this); ++*this; return old; }
            post_order_iterator& operator --() { --(*static_cast<const_post_order_iterator*>(this)); return *this; }
            post_order_iterator operator --(int) { post_order_iterator old(*this); --*this; return old; }

            // public interface
            tree_type& operator*() { return  const_cast<tree_type&>(it.operator *()); }
            tree_type* operator->() { return const_cast<tree_type*>(it.operator ->()); }
            tree_type* node() { return const_cast<tree_type*>(it.node()); }
            friend class basic_tree<stored_type, tree_type, container_type, alloc>;

        };

        class const_level_order_iterator : public std::iterator<std::forward_iterator_tag, tree_type*>
        {
        public:
            // constructors/destructor
            const_level_order_iterator() {}
            virtual ~const_level_order_iterator() {}
        protected:
            explicit const_level_order_iterator(const basic_tree_type* pTop_node_) : pTop_node(pTop_node_), node_depth(0) { it = pTop_node_->begin(); }
            explicit const_level_order_iterator(const_iterator& it_) : it(it_) {}

        public:
            // overloaded operators
            friend bool operator != (const const_level_order_iterator& lhs, const const_level_order_iterator& rhs) { return lhs.it != rhs.it; }
            friend bool operator == (const const_level_order_iterator& lhs, const const_level_order_iterator& rhs) { return lhs.it == rhs.it; }
            const_level_order_iterator& operator ++() { return incr(); }
            const_level_order_iterator operator ++(int) { const_level_order_iterator old(*this); ++*this; return old; }
            // declare, but don't define decr operators
            const_level_order_iterator& operator --();
            const_level_order_iterator operator --(int);

            // public interface
            const tree_type& operator*() const { return  it.operator *(); }
            const tree_type* operator->() const { return it.operator ->(); }
            int depth() const { return node_depth; }
            const tree_type* node() { return it.node(); }
            friend class basic_tree<stored_type, tree_type, container_type, alloc>;
        private:
            const_level_order_iterator& incr()
            {
                const_iterator it_end = node()->parent()->end(); 
                node_queue.push(it); // push current pos node in queue
                ++it;  // and goto next sibling if present

                if ( it == it_end ) { // past last sibling?  If not, we're done.
                    while ( !node_queue.empty() ) { // yes. Insure queue not empty
                        it = node_queue.front(); // pull pos off queue
                        node_queue.pop(); // this should be the start pos of level just traversed
                        if ( !it->empty() ) { // have children?
                            it = node()->begin(); // yes. descend to start of next level
                            ++node_depth;
                            break;
                        } else if ( node_queue.empty() ) { // no children.  is queue empty?
                            it = pTop_node->end(); // yes. at end
                            return *this;
                        }
                    } 
                }
                return *this;
            }

            // data
        protected:
            const_iterator it;
            std::queue<const_iterator> node_queue;
            const basic_tree_type* pTop_node;
            int node_depth;
        };

        class level_order_iterator : public const_level_order_iterator
        {
        public:
            using const_level_order_iterator::it;
            // constructors/destructor
            level_order_iterator() {}
            virtual ~level_order_iterator() {}
        protected:
            explicit level_order_iterator(basic_tree_type* pTop_node_) : const_level_order_iterator(pTop_node_) { }
            explicit level_order_iterator(basic_tree_iterator& it_) : const_level_order_iterator(it_) {}
        
        public:
            // overloaded operators
            level_order_iterator& operator ++() { ++(*static_cast<const_level_order_iterator*>(this)); return *this; }
            level_order_iterator operator ++(int) { level_order_iterator old(*this); ++*this; return old; }

            // public interface
            tree_type& operator*() { return  const_cast<tree_type&>(it.operator *()); }
            tree_type* operator->() { return const_cast<tree_type*>(it.operator ->()); }
            tree_type* node() { return const_cast<tree_type*>(it.node()); }
            friend class basic_tree<stored_type, tree_type, container_type, alloc>;
        };

    // public interface
        bool is_root() const { return pParent_node == 0; }
        tree_type* parent() const { return pParent_node; }
        bool empty() const { return children.empty(); }
        int size() const { return static_cast<int>(children.size()); }

        const_iterator begin() const { return const_iterator(children.begin(), this); }
        const_iterator end() const { return const_iterator(children.end(), this); }
        iterator begin() { return iterator(children.begin(), this); }
        iterator end() { return iterator(children.end(), this); }
        post_order_iterator post_order_begin() { post_order_iterator it(this); return it; }
        post_order_iterator post_order_end() { iterator it = end(); return post_order_iterator(it); }
        const_post_order_iterator post_order_begin() const { const_post_order_iterator it(this); return it; }
        const_post_order_iterator post_order_end() const { const_iterator it = end(); return const_post_order_iterator(it); }
        pre_order_iterator pre_order_begin() { pre_order_iterator it(this); return it; }
        pre_order_iterator pre_order_end() { iterator it = end(); return pre_order_iterator(it); }
        const_pre_order_iterator pre_order_begin() const { const_pre_order_iterator it(this); return it; }
        const_pre_order_iterator pre_order_end() const { const_iterator it = end(); return const_pre_order_iterator(it); }
        level_order_iterator level_order_begin() { level_order_iterator it(this); return it; }
        level_order_iterator level_order_end() { iterator it = end(); return level_order_iterator(it); }
        const_level_order_iterator level_order_begin() const { const_level_order_iterator it(this); return it; }
        const_level_order_iterator level_order_end() const { const_iterator it = end();  return const_level_order_iterator(it); }
        const stored_type* get() const { return &pData; }
        stored_type* get() { return &pData; }
        void set(const stored_type& stored_obj);
        void for_each( void (*pFcn)(stored_type&) );
        template<typename T> 
        void for_each( T& func_ob )
        {
            func_ob(*get()); // call operator() on root
            pre_order_iterator it = pre_order_begin(), it_end = pre_order_end();
            for ( ; it != it_end; ++it )  // call operator() on all descendants
                func_ob(*it.node()->get());
        }
        static void set_clone(const tClone_fcn& fcn) { pClone_fcn = fcn; }
        void clear();
        void erase(iterator it);
    protected:
        void set_parent(tree_type* pParent) { pParent_node = pParent; }
        basic_tree_type& operator = (const basic_tree_type& rhs); // assignment operator
        iterator insert( const stored_type& stored_obj, tree_type* parent );
        iterator insert(stored_type* pStored_obj, tree_type* parent);
        iterator insert(const tree_type& tree_obj, tree_type* parent);
        void set(const tree_type& tree_obj, tree_type* parent);
        void allocate_tree_type(tree_type*& tree_ptr, const tree_type& tree_obj) {
            TreeAlloc tree_type_allocator;
            tree_ptr = tree_type_allocator.allocate(1,0);
            tree_type_allocator.construct(tree_ptr, tree_obj);
        }
        void deallocate_tree_type(tree_type* tree_ptr) {
            TreeAlloc tree_type_allocator;
            tree_type_allocator.destroy(tree_ptr);
            tree_type_allocator.deallocate(tree_ptr, 1);
        }
        
    // data
    protected:
        container_type children;
    private:
        stored_type pData;   // data accessor
        mutable tree_type* pParent_node;
        static tClone_fcn pClone_fcn;

    //friend class boost::serialization::access;

    template<class Archive>
    void save(Archive &ar, const unsigned int /*version*/) const {
        ar & pData;
        size_t num_children = children.size();
        ar & num_children;
        for (typename container_type::const_iterator i = children.begin(); i != children.end(); ++i) {
            ar & **i;
        }
    }
    
    template<class Archive>
    void load(Archive &ar, const unsigned int /*version*/) {
        ar & pData;
        size_t num_children;
        ar & num_children;

        this->clear();

        while (num_children != 0) {
            tree_type* pNode;
            allocate_tree_type(pNode, tree_type());
	    ar & *pNode;
            pNode->set_parent(static_cast<tree_type*>(this));
            children.insert(pNode);
            num_children--;
        }
    }

   // BOOST_SERIALIZATION_SPLIT_MEMBER()    
};

// stored_type:             type stored in container
// tree_type:               one of three tree types derived from this base
// container_type:      type of contain to hold children (can be set or multiset)

template< typename stored_type, typename tree_type,  typename container_type, typename alloc = std::allocator<stored_type> >
class associative_tree : public basic_tree<stored_type, tree_type, container_type, alloc>
{
protected:
    typedef basic_tree<stored_type, tree_type, container_type, alloc > basic_tree_type;
    associative_tree() : basic_tree_type(stored_type()) {}
    explicit associative_tree( const stored_type& stored_obj ) : basic_tree_type(stored_obj) {}
    ~associative_tree() {}

// public interface
public:
    typename basic_tree_type::iterator find(const stored_type& stored_obj);
    typename basic_tree_type::const_iterator find(const stored_type& stored_obj) const;
    bool erase(const stored_type& stored_obj);
    void erase(const typename basic_tree_type::iterator& it) { basic_tree_type::erase(it); }    
    
};


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



// forward declaration for deref comparison functor
template<typename stored_type, typename alloc, typename node_compare_type >
class tree;


// deref comparison functor, derive from binary function per Scott Meyer
template<typename stored_type, typename alloc, typename node_compare_type >
struct tree_deref_less : public std::binary_function<const tree<stored_type, alloc, node_compare_type>*,
                                                     const tree<stored_type, alloc, node_compare_type>*, bool>
{
    bool operator () (const tree<stored_type, alloc, node_compare_type>* lhs,
                      const tree<stored_type, alloc, node_compare_type>* rhs) const 
    {
        // call < on actual object
        return (*lhs < *rhs);
    }
};

// node object type.  forwards most operations to base_tree_type, 
// instanciates base_tree_type with type of container (set of unique_tree ptrs) to use for node and key comparisons
template<typename stored_type, typename alloc, typename node_compare_type = std::less<stored_type> >
class tree : public associative_tree<stored_type, tree<stored_type, alloc, node_compare_type>, 
                                     std::set<tree<stored_type, alloc, node_compare_type>*,
                                              tree_deref_less<stored_type, alloc, node_compare_type>, alloc >,
                                     alloc>
{
public:
    // typedefs
    typedef tree<stored_type, alloc, node_compare_type> tree_type;
    typedef basic_tree<stored_type, tree<stored_type, alloc, node_compare_type>, std::set<tree<stored_type, alloc, node_compare_type>*, tree_deref_less<stored_type, alloc, node_compare_type>, alloc >, alloc > basic_tree_type;
    typedef associative_tree<stored_type, tree<stored_type, alloc, node_compare_type>,  std::set<tree<stored_type, alloc, node_compare_type>*, tree_deref_less<stored_type, alloc, node_compare_type>, alloc >, alloc > associative_tree_type;
    friend class basic_tree<stored_type, tree<stored_type, alloc, node_compare_type>,  std::set<tree<stored_type, alloc, node_compare_type>*, tree_deref_less<stored_type, alloc, node_compare_type>, alloc >, alloc >;

    // constructors/destructor
    tree() : associative_tree_type() {}
    explicit tree( const stored_type& stored_obj ) : associative_tree_type(stored_obj) {}
    tree( const tree_type& rhs ); // copy constructor
    ~tree() { basic_tree_type::clear(); }

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



int main(void)
{	
	cout<<"Hello World !!!\n";	
	int val=50;
	tree<int,std::allocator<int>,std::less<int> > tr(val);
	
	for(int i=0;i<10;i++)
	{
		cout<<"Enter a number to insert into the tree : ";
		cin>>val;
		tr.insert(val);
	}
	
	return 0;
}

//#include "basic_tree.inl"
