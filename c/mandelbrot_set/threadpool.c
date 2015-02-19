#include "threadpool.h"
#include<stdlib.h>

THPOOL_T* create_threadpool(uint64_t max_threads){
	THPOOL_T* thp = (THPOOL_T*)malloc(1*sizeof(THPOOL_T));
	thp->max_threads = max_threads;
	thp->threads = (pthread_t*) malloc(max_threads*sizeof(pthread_t));
	thp->fns = (start_routine_t*)malloc(1*sizeof(start_routine_t));
        thp->fns_args = malloc(1*sizeof(void));
	thp->req_threads = 0;
	return thp;
}

void add_job(THPOOL_T* thp, start_routine_t strt, void * arg) {
	if(thp == NULL) return;
	thp->fns = (start_routine_t*)realloc(thp->fns,(thp->req_threads + 1)*sizeof(start_routine_t));
	(thp->fns)[thp->req_threads] = strt;
	thp->fns_args = (uint32_t*)realloc(thp->fns_args,(thp->req_threads + 1)*sizeof(uint32_t));
	(thp->fns_args)[thp->req_threads] = (uint32_t)(arg);
	(thp->req_threads)++;
}

void wait_t(THPOOL_T* thp) {
	uint64_t thsrvd = 0;
	uint64_t mxthrd = 0;
	for(thsrvd = 0;thsrvd < thp->req_threads; thsrvd++) {
		pthread_create(&((thp->threads)[thsrvd % thp->max_threads]),NULL,((thp->fns)[thsrvd]),(void*)((thp->fns_args)[thsrvd]));
		if((thsrvd!=0) && (thsrvd % thp->max_threads == 0)){
			for(mxthrd = 0;mxthrd < thp->max_threads; mxthrd++) {
				pthread_join((thp->threads)[mxthrd],NULL);
			}
		}
	}
}

void destroy_threadpool(THPOOL_T** thp) {
	if(thp == NULL) return;
	free((*thp)->threads);
	free((*thp)->fns);
	free((*thp)->fns_args);
	free(*thp);
	*thp = NULL;
	pthread_exit(NULL);
}
