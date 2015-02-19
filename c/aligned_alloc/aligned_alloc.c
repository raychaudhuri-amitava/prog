#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>

void *malloc_align(size_t sz, size_t align) {
    //Take some extra space for keeping the ptr.
    char *ptr = (char*)malloc(sz+align+sizeof(size_t));
    char * retptr = ((size_t)(ptr + sizeof(size_t)) % align) == 0 ? (char*)(ptr + sizeof(size_t)) :(char *)((((size_t)(ptr + sizeof(size_t)) - (size_t)(ptr + sizeof(size_t)) % align) + align));
    *((size_t*)(retptr - sizeof(size_t))) = (size_t)(ptr);
    return (void *)(retptr);
}

void free_align(void* ptr) {
    void* free_ptr = (void *)(*((size_t*)((char*)(ptr) - sizeof(size_t))));
    free(free_ptr);
}

void* aligned_malloc(size_t required_bytes, size_t alignment) {
	void* p1; // original block
	void** p2; // aligned block
	int offset = alignment - 1 + sizeof(void*);
	if ((p1 = (void*)malloc(required_bytes + offset)) == NULL) {
		return NULL;
	}
	p2 = (void**)(((size_t)(p1) + offset) & ~(alignment - 1));
	p2[-1] = p1;
	return p2;
}

void aligned_free(void *p) {
	free(((void**)p)[-1]);
}

int main(void) { 

    int i = 0;
    int *ptr[100];
    for(i = 0; i < 100; i++) {
        ptr[i] = (int *) aligned_malloc(10*sizeof(int),8);
        printf("ptr = %u mod = %u\n",(size_t)(ptr[i]), ((size_t)(ptr[i]))%8);
    }
    for(i = 0; i < 100; i++) {
        aligned_free(ptr[i]);
    }

    for(i = 0; i < 100; i++) {
        ptr[i] = (int *) malloc_align(10*sizeof(int),6);
        printf("ptr = %u mod = %u\n",(size_t)(ptr[i]), ((size_t)(ptr[i]))%6);
    }
    for(i = 0; i < 100; i++) {
        free_align(ptr[i]);
    }
    
    printf("size of size_t = %u size of void* = %u\n",sizeof(size_t), sizeof(void*));
    return 0;
}
