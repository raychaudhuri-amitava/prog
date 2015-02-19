#include<stdio.h>
#include<stdlib.h>

struct some {
int a;
int b;
};

int allocate1(struct some const ** sq) {
/*int allocate1(const struct some ** sq) { are same */
printf("allocate1 addr of sq = %u\n",(unsigned int)(sq));
sq = (const struct some **)malloc(1*sizeof(struct some *));
printf("allocate1 addr of sq = %u\n",(unsigned int)(sq));
free(sq);
sq = NULL;
printf("allocate1 addr of sq = %u\n",(unsigned int)(sq));
return 1;
}

int allocate2(struct some ** const sq) {
/*sq = (struct some **)malloc(1*sizeof(struct some *));This is an error 
free(sq);
sq = NULL; */
printf("allocate2 addr of sq = %u\n",(unsigned int)(sq));
*sq = (struct some *) malloc(1*sizeof(struct some));
printf("allocate2 addr of sq = %u\n",(unsigned int)(sq));
return 2;
}

int main(void) {
struct some *a = NULL;
printf("addr of a = %u\n",(unsigned int)(&a));
allocate1((const struct some **)&a);
printf("addr of a = %u\n",(unsigned int)(&a));
allocate2(&a);
return 0;
}
