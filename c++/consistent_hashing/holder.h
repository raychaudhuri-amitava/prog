/*
 * =====================================================================================
 *
 *       Filename:  holder.h
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  Wednesday 24 June 2015 10:52:31  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#ifndef __HOLDER_H_
#define __HOLDER_H_

#include<stdint.h>
#include<map>
#include<utility>

template<typename KEY, typename VALUE>
class holder_t {
	private:
		uint32_t f_id;
		std::map<KEY, VALUE> f_data;

	public:
                holder_t(uint32_t id) : f_id(id) {}
		bool operator<(holder_t const &rhs) const {
			return f_id < rhs.f_id;
		}

		void insert(KEY const& ky, VALUE v);
		void remove(KEY const& ky);
		void update(KEY const& ky, VALUE v);
		bool find(KEY const& ky, VALUE & retv) const;
};

#include "holder.tpp" 

#endif //__HOLDER_H_

