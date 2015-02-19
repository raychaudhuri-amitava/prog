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
#include "basic_tree.h"

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

    friend class boost::serialization::access;

    template<class Archive>
    void serialize(Archive &ar, const unsigned int /*version*/) {
        ar & boost::serialization::base_object<basic_tree_type>(*this);
    }
    
};

#include "associative_tree.inl"
