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

template<typename KEY, typename VALUE,typename HF>
uint32_t consistent_hash<KEY,VALUE,HF>::getKeyHash(KEY ky) const{
        typename HF::template hash_func<KEY>::hf hf;
	return hf(ky);
}

template<typename KEY, typename VALUE,typename HF>
consistent_hash<KEY,VALUE,HF>::consistent_hash() {}
template<typename KEY, typename VALUE,typename HF>
consistent_hash<KEY,VALUE,HF>::consistent_hash(std::vector<std::string> const& holder_ids) {
	for(std::vector<std::string>::const_iterator it = holder_ids.begin(); it != holder_ids.end(); ++it) {
		uint32_t hky = f_hash_func(*it);
		f_holder.insert(holder_t<KEY, VALUE>(hky));
	}
}


template<typename KEY, typename VALUE,typename HF>
void consistent_hash<KEY,VALUE,HF>::insert(KEY const& ky, VALUE v) {
	if(f_holder.empty()) {
		return;
	}
        const holder_t<KEY, VALUE> hldr(getKeyHash(ky));
	typename std::set<holder_t<KEY, VALUE> >::iterator it = f_holder.lower_bound(hldr);
	if(it != f_holder.end()) {
		it->insert(ky, v);
	} else {
		f_holder.begin()->insert(ky, v);
	}
}


template<typename KEY, typename VALUE,typename HF>
void consistent_hash<KEY,VALUE,HF>::remove(KEY const& ky) {
	if(f_holder.empty()) {
		return;
	}
	typename std::set<holder_t<KEY, VALUE> >::iterator it = f_holder.lower_bound(holder_t<KEY, VALUE>(getKeyHash(ky)));
	if(it != f_holder.end()) {
		it->remove(ky);
	} else {
		f_holder.begin()->remove(ky);
	}
}


template<typename KEY, typename VALUE,typename HF>
void consistent_hash<KEY,VALUE,HF>::update(KEY const& ky, VALUE v) {
	if(f_holder.empty()) {
		return;
	}
	typename std::set<holder_t<KEY, VALUE> >::iterator it = f_holder.lower_bound(holder_t<KEY, VALUE>(getKeyHash(ky)));
	if(it != f_holder.end()) {
		it->update(ky, v);
	} else {
		f_holder.begin()->update(ky, v);
	}
}


template<typename KEY, typename VALUE,typename HF>
bool consistent_hash<KEY,VALUE,HF>::find(KEY const& ky, VALUE & retv) const {
	if(f_holder.empty()) {
		return false;
	}
	typename std::set<holder_t<KEY, VALUE> >::const_iterator it = f_holder.lower_bound(holder_t<KEY, VALUE>(getKeyHash(ky)));
	if(it != f_holder.end()) {
		it->find(ky, retv);
	} else {
		f_holder.begin()->find(ky, retv);
	}
}


template<typename KEY, typename VALUE,typename HF>
void consistent_hash<KEY,VALUE,HF>::add_holder(std::string const& holder_id) {
	uint32_t hky = f_hash_func(holder_id);
	f_holder.insert(holder_t<KEY, VALUE>(hky));
}


