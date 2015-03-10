#include "PredictParameterLoader.h"

//CTOR - initializes filename, number of records to be read and memory chunk that is used to hold all the data read from the file of type PredictParameter
PredictParameterLoader::PredictParameterLoader(string sFileName, int nNumberOfLines)
{
	strcpy(m_sFileName, sFileName);
	nNumberOfRecords = nNumberOfLines;
	
	//allocate the chunk equal to number of records to be read from the file
	pPredictParameterInstances = new PredictParameter[nNumberOfRecords];
}
//returns the currently read chunk from the given file
PredictParameter & PredictParameterLoader::getPredictParameterLoader()
{
	if(pPredictParameterInstances != NULL)
		return pPredictParameterInstances;
	else
		return NULL;
}

//DTOR - clears of the memory allocated 
PredictParameterLoader::PredictParameterLoader()
{
	delete [] pPredictParameterInstances;
}

int PredictParameterLoader::LoadFile(/*PredictParameter *pPredictParameterInstance, int nLinesToRead*/)
{
    // Open the file containing the lines extracted from the Predict Cache
    ifstream ifInputFile(m_sFileName);
    
	// initialize variables for obtaining the values, parsing them and loading them to the structure
    int ctr = 0;
    string sWholeLine;
    string sWholeField;
    string keys, values;
    int nIndexOfSpace, nStartPos=0;
    int cntField = 0;


    // read the lines in the file till 
    while( ctr < nNumberOfRecords ) {
        nStartPos = 0;

        if((std::getline(ifInputFile,sWholeLine)).eof())
            break;

        //printf("\nLine read from Predict Cache: %s", sWholeLine.c_str());

        // read one after the other all fields in the current line
        int nIndexOfSpace = sWholeLine.find(' ', nStartPos);

        // Make the switch back to '0'
        cntField = 0;

        // Could not find a better way of doing this. Using a infinite loop, will change.
        while(1) {	

            sWholeField = sWholeLine.substr(nStartPos, nIndexOfSpace - nStartPos);

            //store key-value individually
            int nLength = sWholeField.length();

            int nIndexOfKey = sWholeField.find('=', 0);

            long nValue = atol(sWholeField.substr(nIndexOfKey + 1, (nLength - nIndexOfKey - 1)).c_str());

            switch(cntField) {
				
				case 0:
					//printf("\nPublisher Class = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_PUB_CLASS, nValue); //atoi(sWholeField.substr(nIndexOfKey+1, nLength - nIndexOfKey - 1).c_str());
					break;
				case 1:
					//printf("\nConversion Type = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_CONVERSION_TYPE_ID, nValue); //atoi(sWholeField.substr(nIndexOfKey+1, nLength - nIndexOfKey - 1).c_str());
					break;
				case 2:
					//printf("\nAdvertiser ID = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_ADVERTISER_ID, nValue); //atoi(sWholeField.substr(nIndexOfKey+1, nLength - nIndexOfKey - 1).c_str());
					break;
				case 3:
					//printf("\nConversion ID = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_CONVERSION_ID, nValue); //atoi(sWholeField.substr(nIndexOfKey+1, nLength - nIndexOfKey - 1).c_str());
					break;
				case 4:
					//printf("\nCampaign ID = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_CAMPAIGN_ID, nValue);
					break;
				case 5:
					//printf("\nFrequency = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_FREQUENCY_BUCKET, nValue);
					break;
				case 6: 
					//printf("\nPearl ID = %ld", nValue);
					pPredictParameterInstance[ctr].pearl_id = nValue;
					break;
				case 7:
					//printf("\nGender = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_GENDER, nValue); // need to put this as a CHAR (IMPORTANT)
					break;
				case 8:
					//printf("\nAge = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_AGE, nValue);
					break;
				case 9:
					//printf("\nSize ID = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_SIZE_ID, nValue);
					break;
				case 10:
					//printf("\nCreative ID = %ld", nValue);
					pPredictParameterInstance[ctr].addParam(FV_CREATIVE_ID, nValue);
					break;
				default:
					break;			

			}
            
            if (nIndexOfSpace==string::npos)
                break;
            nStartPos = nIndexOfSpace + 1;
            nIndexOfSpace = sWholeLine.find(' ', nStartPos);
            cntField++;
        }
        ctr++;
    }
    ifInputFile.close();
    return ctr;
}