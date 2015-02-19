#ifndef __THRDPOOL_H_
#define __THRDPOOL_H_
#include<pthread.h>
#include<stdint.h>

typedef void *(*start_routine_t)(void*);

typedef struct THPOOL{
	uint64_t max_threads;
	pthread_t *threads;
        start_routine_t* fns;
        uint32_t* fns_args;
	uint64_t req_threads;
}THPOOL_T;

THPOOL_T* create_threadpool(uint64_t max_threads);
void add_job(THPOOL_T* thp, start_routine_t strt, void *arg);
void wait_t(THPOOL_T* thp);
void destroy_threadpool(THPOOL_T** thp);

#endif //__THRDPOOL_H_
