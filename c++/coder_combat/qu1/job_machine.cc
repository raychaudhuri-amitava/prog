#include<iostream>
#include<vector>
#include<algorithm>

class Job {
    private:
    int start_time;
    int end_time;
    public:
    Job() : start_time(-1), end_time(-1) {}
    Job(int s, int e) : start_time(s), end_time(e) {}
    Job(char *s) : start_time(-1), end_time(-1) {
        int st = 0;
        int en = 0;
        if(!getOffsets(s, st, en, start_time)) {
            return;
        }
        start_time += (arr2int(s, st, en)%12);
        st = en;
        if(!getOffsets(s, st, en, end_time)) {
            start_time = -1;
            return;
        }
        end_time += (arr2int(s, st, en)%12);
        if(end_time < start_time) {
            end_time = start_time = -1;
        }
    }
    bool operator<(Job const & lhs) const {
        return end_time < lhs.end_time;
    }
    bool isNoOverlapAfterSorting(Job const & lhs) const {
        return start_time >= lhs.end_time;
    }
    bool isValid() const {
        return start_time > -1;
    }
    private:
    bool getOffsets(char*s, int &st, int &en, int &tmOffset) {
        while((s[st] != '\0') && (s[st] < '0' || s[st] > '9')) {
            st++;
        }
        if(s[st] == '\0') {
            return false;
        }
        en = st + 1;
        while((s[en] != '\0') && (s[en] >= '0' && s[en] <= '9')) {
            en++;
        }
        if(s[en] == 'P'){
            tmOffset = 12;                
        }else if(s[en] == 'A') {
            tmOffset = 0;            
        }else {
            return false;
        }
        return true;
    }
    int arr2int(char *n, int st, int en) {
        int ret = 0;
        for(;st < en; ++st) {
            ret = ret*10 + static_cast<int>(n[st] - '0');
        }
        return ret;
    }
};

int jobMachine(char* input1[])
{
    int ini = 0;
    std::vector<Job> jobs;
    while(input1[ini] != NULL) {
        jobs.push_back(Job(input1[ini]));
        ini++;
    }
    std::sort(jobs.begin(), jobs.end());
    Job lastchoosen;
    int numJobs = 0;
    bool firstJob = false;
    for(std::vector<Job>::const_iterator cit =jobs.begin(); cit != jobs.end(); ++cit) {
        if(!firstJob) {
            if(cit->isValid()) {
                lastchoosen = *cit;
                firstJob = true;
                numJobs = 1;
            }
        } else {
            if(cit->isValid() && cit->isNoOverlapAfterSorting(lastchoosen)) {
                numJobs++;
                lastchoosen = *cit;
            }
        }
    }
    return numJobs*500;
}


int main(void) {
    char* inp[] = {"6AM#8AM", "11AM#1PM", "7AM#3PM", "7AM#10AM", "10AM#12PM", "2PM#4PM", "1PM#4PM", "8AM#9AM", NULL};
    std::cout<<"Amount= "<<jobMachine(inp)<<std::endl;
    return 0;

}
