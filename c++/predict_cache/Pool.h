/* -*- mode: c++; c-basic-offset: 2; indent-tabs-mode: nil -*- */
#ifndef _MY_POOL
#define _MY_POOL
#include <assert.h>
#include <stdlib.h>
#include <iostream>
using std::cerr ;
/**
 * A fast memory pool
 */



/**
 * This class holds a "page of memory" and a offset into the page,
 * and link to another page (single linked list)
 */
class mempage {
public:
  void* ptr;
  mempage* next;
  int offset;
  size_t sz;

public:
  mempage(size_t pgsize, mempage* nextpg) :
    ptr(0),
    next(nextpg),
    offset(0),
    sz(pgsize)
  {
    // explicit call to global new
    ptr = ::operator new(pgsize);
  }

  ~mempage() {
    // explicit call to global delete
    ::operator delete(ptr);
  }
};

/**
 * This is the main pool interface
 */

class Pool {
private:
  Pool(const Pool&);  // no copy ctor
  mempage* fPages;
  size_t fPageSize;

public:
  Pool(size_t pagesize):
    fPages(0),
    fPageSize(pagesize)
  {
    fPages = new mempage(pagesize, 0);
  }

  ~Pool()
  {
    destroy();
  }

  void reset()
  {
    destroy();
    create();
  }

  void create()
  {
    // don't create when we already exist
    if (fPages == 0) {
      fPages = new mempage(fPageSize, 0);
    }
  }

  void destroy()
  {
    mempage* ph = fPages;
    mempage* next = 0;
    while (ph != 0) {
      next = ph->next;
      delete ph;
      ph = next;
    }
    fPages = 0;
  }

  void* alloc(size_t size)
  {
    create();
    //cerr << __FUNCTION__ << ": " << size << " bytes\n";
    static const int v = sizeof(void*);
    size_t newsize = size + (v - size % v);
    if ((fPages->offset + newsize) < fPages->sz) {
      void* ptr = (char*)fPages->ptr + fPages->offset;
      fPages->offset += newsize;
      return ptr;
    } else {
      size_t newpagesize = (newsize > fPageSize) ? newsize : fPageSize;
      mempage* newpage = new mempage(newpagesize, fPages);
      newpage->offset = newsize;
      fPages = newpage;
      return fPages->ptr;
    }
  }
};

#endif
