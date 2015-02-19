#include "cpl_glue.h"


cpl<char> glue_cpl("Hello world");

void glue_print_me(void)
{
    glue_cpl.print_me();
    return; 
}
