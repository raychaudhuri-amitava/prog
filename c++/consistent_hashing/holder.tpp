/*
 * =====================================================================================
 *
 *       Filename:  holder.tpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  Wednesday 24 June 2015 10:52:31  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Amitava Ray Chaudhuri 
 *   Organization:  
 *
 * =====================================================================================
 */



template<typename KEY, typename VALUE>
void holder_t<KEY, VALUE>::insert(KEY const& ky, VALUE v) {
	f_data[ky] = v;
}

template<typename KEY, typename VALUE>
void holder_t<KEY, VALUE>::remove(KEY const& ky) {
	f_data.erase(ky);
}

template<typename KEY, typename VALUE>
void holder_t<KEY, VALUE>::update(KEY const& ky, VALUE v) {
	typename std::map<KEY, VALUE>::iterator it = f_data.find(ky);
	if(it != f_data.end()) {
		f_data[ky] = v;
	}
}

template<typename KEY, typename VALUE>
bool holder_t<KEY, VALUE>::find(KEY const& ky, VALUE & retv) const {
	typename std::map<KEY, VALUE>::const_iterator it = f_data.find(ky);
	if(it != f_data.end()) {
		retv = it->second;
		return true;
	}
	return false;
}

