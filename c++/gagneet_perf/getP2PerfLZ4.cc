/*
 * File: getP2Perf.cc
 * 
 * Command to compile the file:
 * g++ getPerf.cc -I/home/y/include64 -I/home/y/include -I/usr/local/include -I/home/y/include/boost-1_33_1 -I/home/y/include/rmas-3rdparty-base64-0 -I/home/y/include/rmas-util-lz3-0 -I/home/y/include/rmas-3rdparty-threadpool-0 -I/home/y/include/mondemand-client-3 -I/home/y/include/lwes-0 -I/home/y/include/coma-textio-0 -I/home/y/include/buffoon-0 -I/home/y/include/coma-hash-0 -I/home/y/include/rmas-predict-common-lz3-0 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/lib64/glib-2.0/include -I/home/y/include/rmas-3rdparty-treecontainer-0 -I/home/y/include/rmas-util-lz3-0/rmas-util-lz3-0.0.1.1/ -I/home/y/include/rmas-3rdparty-threadpool-0 -I/home/y/include/rmas-predict-glue-lz3-0 -I/home/y/include/rmas-server-objects-lz3-0 -I/home/y/include/rmas-traffic-objects-lz3-0 -I/home/y/include/rmas-report-common-lz3-0 -I/home/y/include/rmas-server-stats-lz3-0 -I/home/y/include/rmas-proxy-common-objects-lz3-0 -I/home/y/include/rmas-3rdparty-gmetric-0 -DSKELETOR_ENABLED -DOBJECT_ID_64 -DLZ3 /home/y/lib64/librmas-predict-common-lz3.so /home/y/lib64/librmas-util-lz3.so -lboost_thread -L/home/y/lib -g -lrt -o lz4
 * 
 * Command to compile in LZ2:
 * g++ getP2Perf.cc -I/home/y/include64 -I/home/y/include -I/usr/local/include -I/home/y/include -I/usr/local/include -I/home/y/include/boost-1_33_1 -I/home/y/include/rmas-3rdparty-base64-0 -I/home/y/include/rmas-util-lz2-3 -I/home/y/include/rmas-3rdparty-threadpool-0 -I/home/y/include/mondemand-client-3 -I/home/y/include/lwes-0 -I/home/y/include/coma-textio-0 -I/home/y/include/buffoon-0 -I/home/y/include/coma-hash-0 -I/home/y/include/rmas-predict-common-lz2-3 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/lib64/glib-2.0/include    -I/home/y/include/rmas-3rdparty-treecontainer-0 -I/home/y/include/boost-1_33_1 -I/home/y/include/rmas-3rdparty-threadpool-0 -I/home/y/include/rmas-util-lz2-3/rmas-util-lz2-3.1.1.4/ -DSKELETOR_ENABLED -DOBJECT_ID_64 -DLZ2 /home/y/lib64/librmas-predict-common-lz2.so /home/y/lib64/librmas-util-lz2.so -g -lrt -o lz2
 *
 * Execute the file:
 * ./a.out v.cache p2PerfLines.txt 5
 *
 * Logic used for creating this file:
 * Load the Predict2 Cache [option on the command line for Cache File Name, this will be same for both LZ2 Cache and LZ3 Cache]
 * [OR] While lines <= CmdLnParameter, read a line in the p2PerfLines.txt flat file (this can be made random)
 * (Parallel processing of the calls can be thought out here, will implement at a later stage.)
 * 		Populate the values obtained in the given ‘predict_keys’ structure
 * 		Create an array, for: the key/line used, function called [OPTIONAL], time taken, and value returned by the function
 * 		Start the timer 
 * 			[OPTIONAL] Call each of the mentioned functions, with the ‘predict_key’ and checkBudget == T (functions can be called in sequential manner for each line) 
 * 			[OR] Call the ‘getClickProb’ function, with the ‘predict_key’ and checkBudget == T 
 * 			(The rest of the parameters will be constants, in both above calls to the API)
 * 		Store the returned value in a variable
 * 		Stop the timer
 * 		Store the values obtained into the array
 * Repeat the above steps till EOF
 * Calculate the total time spent by adding all the time values
 * Calculate and print out the mean and the number of calls made to the console
 * 
 * Print the values obtained in the array to a flat file for later comparison.
 */

// Using a mixture of C and C++ 


#include <iostream>
#include <math.h>
#include <fstream>
#include <rmaspredictcommon.h>
#include <rmaspredictglue.h>
#include <rmasutil.h>
#include <string.h>
#include <time.h>
#include <boost/thread/mutex.hpp>
#include <rmas3rdpartythreadpool.h>
#include <boost/bind.hpp>

#define NUM_ITER 1000000
#define NS_MULTIPLIER 1000000000

using namespace std;
using boost::mutex;
using boost::thread;

class PredictParameter;
class PredictFactory;
class Predict;

typedef boost::shared_ptr<PredictFactory> PredictFactory_t;
typedef boost::shared_ptr<Predict> Predictptr_t;

//Predict2Cache<p2_cache_element> gPredict2Cache;
Predict2Lock gPredict2Lock;

extern PredictFactory_t gPredictFactory;
Predictptr_t gTInpPtr;

int threadLockedAPIgetProb( int, int, Predict2V2Cache<p2c_cache_element>* );
int LoadStructFromFile( predict_cache_key*, int, vector<PredictParameter>& );


int LoadStructFromFile( predict_cache_key *loadedStruct, int nLinesToRead, vector<PredictParameter>& vec_param ) {

    // Open the file containing the lines extracted from the Predict Cache
    ifstream ifInputFile("./p2PerfLines.txt");
    // initialize variables for obtaining the values, parsing them and loading them to the structure
    
    int ctr = 0;
    string sWholeLine;
    string sWholeField;
    string keys, values;
    int nIndexOfSpace, nStartPos=0;
    int cntField = 0;


    // read the lines in the file till 
    while( ctr < nLinesToRead ) {
        nStartPos = 0;

      //rishi
	  PredictParameter perf_param;

        if((std::getline(ifInputFile,sWholeLine)).eof())
            break;

        //printf("\nLine read from Predict Cache: %s", sWholeLine.c_str());

        // read one after the other all fields in the current line
        int nIndexOfSpace = sWholeLine.find( ' ', nStartPos );

        // Make the switch back to '0'
        cntField = 0;

        // Could not find a better way of doing this. Using a infinite loop, will change.
        while(1) {	

            sWholeField = sWholeLine.substr( nStartPos, (nIndexOfSpace - nStartPos) );

            //store key-value individually
            int nLength = sWholeField.length();

            int nIndexOfKey = sWholeField.find( '=', 0 );

            long nValue = atol( sWholeField.substr( nIndexOfKey + 1, (nLength - nIndexOfKey - 1) ).c_str() );

            switch(cntField) {
				
				case 0:
					//printf("\nPublisher Class = %ld", nValue);
					loadedStruct[ctr].pub_class = nValue; //atoi(sWholeField.substr(nIndexOfKey+1, nLength - nIndexOfKey - 1).c_str());
					break;
				case 1:
					//printf("\nConversion Type = %ld", nValue);
					loadedStruct[ctr].conversion_type_id = nValue; //atoi(sWholeField.substr(nIndexOfKey+1, nLength - nIndexOfKey - 1).c_str());
					break;
				case 2:
					//printf("\nAdvertiser ID = %ld", nValue);
					loadedStruct[ctr].advertiser_id = nValue; //atoi(sWholeField.substr(nIndexOfKey+1, nLength - nIndexOfKey - 1).c_str());
					break;
				case 3:
					//printf("\nConversion ID = %ld", nValue);
					loadedStruct[ctr].conversion_id = nValue; //atoi(sWholeField.substr(nIndexOfKey+1, nLength - nIndexOfKey - 1).c_str());
					break;
				case 4:
					//printf("\nCampaign ID = %ld", nValue);
					loadedStruct[ctr].campaign_id = nValue;
					break;
				case 5:
					//printf("\nFrequency = %ld", nValue);
					loadedStruct[ctr].frequency = nValue;
					break;
				case 6: 
					//printf("\nPearl ID = %ld", nValue);
					loadedStruct[ctr].pearl_id = nValue;
					break;
				case 7:
					//printf("\nGender = %ld", nValue);
					loadedStruct[ctr].gender = nValue; // need to put this as a CHAR (IMPORTANT)
					break;
				case 8:
					//printf("\nAge = %ld", nValue);
					loadedStruct[ctr].age = nValue;
					break;
				case 9:
					//printf("\nSize ID = %ld", nValue);
					loadedStruct[ctr].size_id = nValue;
					break;
				case 10:
					//printf("\nCreative ID = %ld", nValue);
					loadedStruct[ctr].creative_id = nValue;
					break;
				default:
					break;			

			}
            
			char* 			conv = NULL;
			int 			freq = loadedStruct[ctr].frequency;
			int 			rec = loadedStruct[ctr].frequency;
			entity_id_t 	advertiser_id = loadedStruct[ctr].advertiser_id;
			unsigned        size_id = loadedStruct[ctr].size_id;
			creative_id_t   creative_id = loadedStruct[ctr].creative_id;
			campaign_id_t   campaign_id = loadedStruct[ctr].campaign_id;
			conversion_id_t conversion_id = loadedStruct[ctr].conversion_id;
			unsigned        conversion_type_id = loadedStruct[ctr].conversion_type_id;
			char            gender = loadedStruct[ctr].gender;
			unsigned        age = loadedStruct[ctr].age;
			unsigned        pub_class = loadedStruct[ctr].pub_class;
			site_id_t 		siteId = 0;
			uint64_t 		sectId = 0;
			uint32_t 		vurl_id = 0;
			entity_id_t 	publisher_id = 0;
			bool            is_post_view = 1;
			
            
            
            if (nIndexOfSpace==string::npos)
                break;
            nStartPos = nIndexOfSpace + 1;
            nIndexOfSpace = sWholeLine.find( ' ', nStartPos );
            cntField++;
            
            entity_queue* eq;
            CreativeNode* cn;
            

						
			perf_param.addParam(FV_PUB_CLASS, pub_class); //Always 0.
			perf_param.addParam(FV_FREQUENCY_BUCKET, freq);
			perf_param.addParam(FV_RECENCY_BUCKET, rec);
			perf_param.addParam(FV_ADVERTISER_ID, advertiser_id);
			perf_param.addParam(FV_SIZE_ID, size_id);
			perf_param.addParam(FV_CREATIVE_ID, creative_id);
			perf_param.addParam(FV_CAMPAIGN_ID, campaign_id);
			if (conv != NULL) {
				perf_param.addParam(FV_CONVERSION_ID, conversion_id);
				perf_param.addParam(FV_CONVERSION_TYPE_ID, conversion_type_id);
				perf_param.addParam(FV_IS_POST_VIEW, is_post_view);
			}
			perf_param.addParam(FV_SECTION_ID, sectId);
			perf_param.addParam(FV_SITE_ID, siteId);
			perf_param.addParam(FV_VURL_ID, vurl_id);
			perf_param.addParam(FV_PUBLISHER_ID, publisher_id );
			perf_param.addParam(FV_GENDER, gender);
			perf_param.addParam(FV_AGE, age);
			//return param;

           	//vec_param.push_back(perf_param);

        }
        ctr++;
    }
    
    ifInputFile.close();
    return ctr;
	
}


int threadLockedAPIgetProb( int iThread, int iLines, Predict2V2Cache<p2c_cache_element>* pcThread ) {

    Predict2Stats stats;
    const int * constA = 1;
    const int * constB = 1;
    int intA=1, nLines, iCntrA=0, iCntrB=0;
    double totalTime = 0.0, avgTime = 0.0;
	timespec tStart, tStop;
    //const double constC = 0.00023;

    // Get the total number of lines to be run
    nLines = iLines;

    // Create a linked list for the structure.
    predict_cache_key *loadedStruct = new predict_cache_key[nLines];
    
    // Load the structure with the given values from the file.
    vector<PredictParameter> vec_param;

    int retValue = LoadStructFromFile( loadedStruct, nLines, vec_param );

    for (int i = 0; i < vec_param.size(); i++) {
    
      	PredictParameter& p = vec_param[i];
        clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &tStart); // reset the clock
        for ( iCntrB = 0; iCntrB <= NUM_ITER; iCntrB++ ) {
            //pcClick->getClickProb( loadedStruct[iCntrA], constA, constB, true, intA, stats );
            //Predict::getProb(pricing_type_t, PredictParameter&, const int&, const int&, NULL);
            //virtual double Predict::getProb(pricing_type_t, PredictParameter&, ServerStats&, enum_learning_status&, rm_string*);
            double prob = gTInpPtr->getProb( click_prob, p, constA, constB, NULL );
        }
        
        clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &tStop);
        totalTime = ((double)(((tStop.tv_sec * NS_MULTIPLIER) + tStop.tv_nsec) - ((tStart.tv_sec * NS_MULTIPLIER) + tStart.tv_nsec))) / NUM_ITER;
        avgTime += totalTime;
        cout << "Line No: " << ( iCntrA + 1 ) << "    Time: " << totalTime <<  " nanoseconds." << endl;
    }

    //for ( iCntrA = 0; iCntrA < nLines; iCntrA++ ) {
        // Make this better by printing the line to a file and also the times.
        //cout << "\n Line: " << cntr << " Pub Class: " << loadedStruct[cntr].pub_class << " Conv Type: " << loadedStruct[cntr].conversion_type_id << " Creative ID: " << loadedStruct[cntr].creative_id << endl;
        // Start the Clock
    //}
    
    cout << "Average time taken for getClickProb is: " << (avgTime / (double)nLines) << " nanoseconds." << endl;
}

int main(int argc, char* argv[]) {
	
	int nLines, nThreads;
	bucket_id_t bucketid = 0;

    if (argc != 4) {
        cerr << "Usage: " << argv[0] << " <predict-cache-file> <no-of-lines> <no-of-threads>" << endl;
        return 1;
    }
    
    // Convert the second argument to an integer
    nLines = atoi(argv[2]);
    nThreads = atoi(argv[3]);
    predict_cache_key keyClick;
    char* cacheName = argv[1];
    
	Predict2V2Cache<p2c_cache_element>* pc = NULL;
	pc = new Predict2V2Cache<p2c_cache_element>;

	// Load the given cache.
    cerr << "Loading the Cache given as: " << cacheName << endl;
    if (!pc->openMap(cacheName)) {
        cerr << "Unable to load predict file: " << cacheName << endl;
        return 1;
    }

	bool gotPred = gTPredictFactory->getPredictInstance( gTInpPtr, bucketid );
	//PredictParameter & param_list = new param_list[nLines];
	
	//PredictParameter & getPredictFeatureVec;
	boost::threadpool::thread_pool<> threads(nThreads);
    
    // start a new thread that calls the "threadLockedAPI" function
    for ( int i = 0; i <= nThreads; i++ ) {
		threads.schedule(boost::bind(&threadLockedAPIgetProb, nThreads, nLines, pc));
	}
	
    // wait for the thread to finish
	threads.wait();
	cout << "\n";
	
    if ( pc != NULL ) {
		delete pc;
		pc = NULL;
    }

  	return 0;
}

