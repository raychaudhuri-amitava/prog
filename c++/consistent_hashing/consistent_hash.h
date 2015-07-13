/*
 * =====================================================================================
 *
 *       Filename:  consistent_hash.h
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  Wednesday 24 June 2015 10:52:58  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include "holder.h"
#include "utils.h"
#include<vector>
#include<set>
#include<string>

template<typename KEY, typename VALUE,typename HF = hash_func_t<std::string> >
class consistent_hash {
	private:
		std::set<holder_t<KEY, VALUE> > f_holder;
                HF f_hash_func;
	public:
		consistent_hash();
		consistent_hash(std::vector<std::string> const& holder_ids);


		void insert(KEY const& ky, VALUE v);
		void remove(KEY const& ky);
		void update(KEY const& ky, VALUE v);
                bool find(KEY const& ky, VALUE & retv) const;
		void add_holder(std::string const& holder_id);
        private: 
		inline uint32_t getKeyHash(KEY ky) const;
};

#include "consistent_hash.tpp"
