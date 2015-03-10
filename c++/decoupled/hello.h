#include "cpl_glue.h"
#pragma once

class hello
{

     int i;
  public:
    hello(int k)
    {
        i=k;
    }

    void call_printme(void)
    {
        i++;
        glue_print_me();
    }
};
