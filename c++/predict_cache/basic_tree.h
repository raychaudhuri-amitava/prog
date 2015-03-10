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
#pragma once
#include <set>
#include <stack>
#include <queue>
#include <algorithm>

#include <boost/serialization/set.hpp>
#include <boost/serialization/split_member.hpp>

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
        template<typename T> void for_each( T& func_ob )
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

    friend class boost::serialization::access;

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

    BOOST_SERIALIZATION_SPLIT_MEMBER()    
};

#include "basic_tree.inl"
