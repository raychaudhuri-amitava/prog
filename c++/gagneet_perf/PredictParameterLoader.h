#ifndef __PARAMETER_LOADER_H
#define __PARAMETER_LOADER_H

#include "PredictParameter.h" //I am assuming the PredictParameter.h is in current directory you may need to change it to <> delimeter based on your need

class PredictParameterLoader

{

private:

	string m_sFileName; //file to load

	int nNumberOfRecords; //number of lines to be read from the given file

	PredictParameter *pPredictParameterInstances; //contains member of type PredictParameter



public:

	PredictParameterLoader(string sFileName, int nNumberOfLines);

	

	//this function loads the whole file in the data-memeber ie. pPredictParameterInstances

	//@returns : number of lines successfully read from the file

	int LoadFile();



	PredictParameter &getPredictParameters();

};


#endif //__PARAMETER_LOADER_H
