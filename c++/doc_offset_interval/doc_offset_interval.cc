#include<iostream>
#include<vector>
#include<algorithm>
#include<stdint.h>
using namespace std;

typedef vector< vector<size_t> > DocOffsets;
typedef pair<size_t,size_t> ValType;
typedef vector< ValType > MergedOffset;

class CompareVal {
public:
    bool operator()(const ValType& v1, const ValType& v2) {
        return v1.first > v2.first;
    }
};

void min_max(const vector<size_t> &wrds,size_t &span, size_t &min, size_t &max) {
    min = 0;
    max = 0;
    size_t len = wrds.size();
    if(len==1) {
        span = 0;
        min = max = 0;
        return;
    }
    for(size_t i = 0;i<len;i+=2) {
        if((i+1) < len){
            if(wrds[i] < wrds[i+1]){
                if(wrds[i] < wrds[min]) min = i;
                if(wrds[i+1] > wrds[max]) max = i+1;
            }
            else {
                if(wrds[i+1] < wrds[min]) min = i+1;
                if(wrds[i] > wrds[max]) max = i;
            }
        }
        else {
            if(wrds[i] < wrds[min]) min = i;
            else if(wrds[i] > wrds[max]) max = i;
        } 
    }
    if(wrds[max] == 0 || wrds[min] == 0) {
        span = 0xffffffff;
    }
    else {
        span = wrds[max] - wrds[min];
    }
}

void searchDoc(DocOffsets& offsets, size_t &startOffset, size_t &endOffset) {
    
    MergedOffset merged;
    MergedOffset tempHeap;
    CompareVal cpv;
    size_t i = 1;
    size_t wordCount = offsets.size();
    for(DocOffsets::iterator it = offsets.begin();it != offsets.end(); ++it){
        tempHeap.push_back(pair<size_t,size_t>((*it)[0],i));
        it->erase(it->begin());
        i++;
    }
    make_heap(tempHeap.begin(),tempHeap.end(),cpv);
     
    while(!tempHeap.empty()) {
        pop_heap(tempHeap.begin(),tempHeap.end(),cpv);
        merged.push_back(tempHeap.back());
        size_t arrToGetNext = tempHeap.back().second; 
        tempHeap.pop_back();
        if(!offsets[arrToGetNext-1].empty()) {
            tempHeap.push_back(pair<size_t,size_t>(offsets[arrToGetNext-1][0],arrToGetNext));
            offsets[arrToGetNext-1].erase(offsets[arrToGetNext-1].begin());
            push_heap(tempHeap.begin(),tempHeap.end(),cpv);
        }
    }
   
    size_t span = 0xffffffff; //span cannot be negative.
    size_t wrd_cnt = 0;
    vector<size_t> gotWords;
    for(MergedOffset::iterator it = merged.begin();it!=merged.end();++it) {
        gotWords.resize(wordCount,0);
        gotWords[(it->second)-1] = it->first+1;
        wrd_cnt++;
        for(MergedOffset::iterator it1 = it+1;it1!=merged.end();++it1) {
           if(wrd_cnt == wordCount) {
               size_t min_off = 0, max_off = 0, temp_span = 0;
               min_max(gotWords,temp_span,min_off,max_off);
               if(span > temp_span) {
                  startOffset = gotWords[min_off] - 1;
                  endOffset = gotWords[max_off] - 1;
                  span = temp_span;
               }
               break;  
           }
           if(gotWords[(it1->second)-1] == 0) {
               gotWords[(it1->second)-1] = it1->first+1;
               wrd_cnt++;
           } 
        }
        if(wrd_cnt < wordCount) break;
        wrd_cnt = 0;
        gotWords.clear();
    }
}

int main(void) {
    size_t start=0, end = 0;
    DocOffsets docWrds;
    int i = 0;
    for(i=0;i<5;i++) {
        switch(i) {
        case 0: {
            size_t a1[] = {2,6,19,20,34,65,78,90};
            vector<size_t>tmp1(a1,a1+(sizeof(a1)/sizeof(size_t)));
            docWrds.push_back(tmp1);
            }
            break;
        case 1: {
            size_t a1[] = {5,16,25,29,36,80,91};
            vector<size_t>tmp1(a1,a1+(sizeof(a1)/sizeof(size_t)));
            docWrds.push_back(tmp1);
            }
            break;
        case 2: {
            size_t a1[] = {62,70,81};
            vector<size_t>tmp1(a1,a1+(sizeof(a1)/sizeof(size_t)));
            docWrds.push_back(tmp1);
            }
            break;
        case 3: {
            size_t a1[] = {21,55,75,85,95,105,115,125,135};
            vector<size_t>tmp1(a1,a1+(sizeof(a1)/sizeof(size_t)));
            docWrds.push_back(tmp1);
            }
            break;
        case 4: {
            size_t a1[] = {37,96};
            vector<size_t>tmp1(a1,a1+(sizeof(a1)/sizeof(size_t)));
            docWrds.push_back(tmp1);
            }
            break;
        }
    }
    searchDoc(docWrds,start,end);
    cout<<"start = "<<start<<" end = "<<end<<endl;
    return 0;
}
