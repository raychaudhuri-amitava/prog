#include<stdio.h>
#include<stdlib.h>

typedef char bool;

#define offsetof(TYPE, MEMBER) ((size_t) &(((TYPE *)0)->MEMBER))
#define segfault(TYPE, MEMBER) ((TYPE *)0)->MEMBER = 10
#define readFrom(TYPE, MEMBER) ((TYPE *)0)->MEMBER
#define getaddr(TYPE, MEMBER) ((size_t)&(((TYPE *)200)->MEMBER))
#define getaddr0(TYPE, MEMBER) ((size_t)&(((TYPE *)0)->MEMBER))


#define container_of(ptr, type, member) ({ \
        const typeof( ((type *)0)->member ) *__mptr = (ptr);  \
        (type *)( (char *)__mptr - offsetof(type, member) );})

#define entry(ptr, type, member) \
    container_of(ptr, type, member)

struct list_head {
    struct list_head *next;
    struct list_head *prev;
};

struct fox{
    unsigned long tail_length;
    bool is_fantastic;
    struct list_head list;
    unsigned long weight;
};

typedef struct fox FOX;

int main(void) {
    struct fox *f = malloc(sizeof(struct fox));
    struct list_head *l = &(f->list);

    struct fox *g;
    g = entry(l,struct fox,list);


    printf("f = %lx, g = %lx\n", (unsigned long)f, (unsigned long)g);

    printf("before getaddr\n");
    size_t pwt = getaddr(struct fox, weight);
    size_t pwt0 = getaddr0(struct fox, weight);
    printf("weight offset = %ld  %ld pwt0 = %ld\n", pwt, pwt - 200, pwt0);

    printf("before segfault\n");
    segfault(struct fox, weight);

    printf("before readFrom\n");
    unsigned long wt = readFrom(struct fox, weight);
    printf("weight = %lu\n", wt);


    free(f); 
    return 0;
}

