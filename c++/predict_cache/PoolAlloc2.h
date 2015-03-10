/* -*- mode: c++; c-basic-offset: 2; indent-tabs-mode: nil -*- */
#ifndef _RM_POOLALLOC2_
#define _RM_POOLALLOC2_

/**
 * This Allocator wraps Pool
 * 99% of this code is just boiler plate required for templating
 */
#include <memory>
using std::allocator;

#include "Pool.h"
#include <limits>
using std::numeric_limits;

template <typename T, typename P>
class PoolAlloc2 {
public:

  // START BOILER PLATE
  typedef size_t    size_type;
  typedef ptrdiff_t difference_type;
  typedef T*        pointer;
  typedef const T*  const_pointer;
  typedef T&        reference;
  typedef const T&  const_reference;
  typedef T         value_type;

  // return address of values
  pointer address (reference value) const {
    return &value;
  }
  const_pointer address (const_reference value) const {
    return &value;
  }

  /* constructors and destructor
   * - nothing to do because the PoolAlloc2 has no state
   */
  PoolAlloc2() throw() {
  }

  PoolAlloc2(const PoolAlloc2&) throw() {
  }


  ~PoolAlloc2() throw() {
  }

  // return maximum number of elements that can be allocated
  size_type max_size () const throw() {
    return numeric_limits<size_t>::max() / sizeof(T);
  }

  // initialize elements of allocated storage p with value value
  void construct (pointer p, const T& value) {
    ::new((void*)p)T(value);
  }

  // destroy elements of initialized storage p
  void destroy (pointer p) {
    p->~T();
  }

  template <class U> struct rebind {
    typedef PoolAlloc2<U, P> other;
  };

  template <class U>  PoolAlloc2 (const PoolAlloc2<U, P>&) throw() {
   }
  // END BOILER PLATE
  // Below starts custom code

  // allocate but don't initialize num elements of type T
  pointer allocate (size_type num,
                    std::allocator<void>::const_pointer = 0) {

    pointer ptr = (pointer)(P::getPool()->alloc(num*sizeof(T)));
    // perhaps do a debug
    return ptr;
  }

  // deallocate storage p of deleted elements
  void deallocate (pointer, size_type) {
    // we don't deallocate data.
    // we could call fPool.free(xx) but that does nothing as well
  }
};

// return that all specializations of this PoolAlloc2 are interchangeable
template <class T1, class T2, class P>
bool operator== (const PoolAlloc2<T1, P>&,
                 const PoolAlloc2<T2, P>&) throw() {
  return true;
}
template <class T1, class T2, class P>
bool operator!= (const PoolAlloc2<T1, P>&,
                 const PoolAlloc2<T2, P>&) throw() {
  return false;
}

#endif

