#include "HermiteSplineInterpolator.h"

#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <map>
#include <cmath>

using namespace std;

namespace arc
{


	void HermiteSplineInterpolator::addPair(double newx, double newf) throw(const char*) {
		if (std::isnan(newx) || std::isinf(newx) || std::isnan(newf) || std::isinf(newf)) {
			throw("HermiteSplineInterpolator: addPair() received inf/nan input.");
		}
		data[newx] = newf ;

		computeInternalFunctionData();
	}


	double HermiteSplineInterpolator::evaluate(double x) const throw(const char*){

		if (std::isnan(x) || std::isinf(x)) {
			throw("HermiteSplineInterpolator: evaluate() received inf/nan input.");
		}

		map<double,double>::const_iterator xf_iterator = data.lower_bound(x);

		if (xf_iterator == data.begin()) {
			if (data.begin()->first == x) { 
				return data.begin()->second;
			}
			else {
				return data.begin()->second;
			}
		}
		if (xf_iterator == data.end()) {
			return data.rbegin()->second;
		}


		pair<double,double> xf2 = *xf_iterator;
		pair<double,double> xf1 = *(--xf_iterator);
		if (ddata.size() != data.size()) {
			double finterp =  xf1.second +
				(xf2.second - xf1.second) / (xf2.first - xf1.first)
				* (x - xf1.first);
			return finterp;
		}
		else { 
			double t = (x - xf1.first)/(xf2.first - xf1.first); 
			double h = xf2.first - xf1.first;
			double finterp
				= xf1.second       * H00(t)
				+ ddata[xf1.first] * H10(t) * h
				+ xf2.second       * H01(t)
				+ ddata[xf2.first] * H11(t) * h ;
			return finterp;
		}

	}



	string HermiteSplineInterpolator::toString() const
	{
		const int precision = 20;
		std::string dataString;
		std::stringstream dataStringStream;
		for (map<double,double>::const_iterator it = data.begin();
				it != data.end(); ++it) {
			dataStringStream << setprecision(precision) << it->first;
			dataStringStream << '\t';
			dataStringStream << setprecision(precision) << it->second;
			dataStringStream << '\n';
		}
		dataStringStream << "Derivative values:" << endl;
		for (map<double,double>::const_iterator it = ddata.begin();
				it != ddata.end(); ++it) {
			dataStringStream << setprecision(precision) << it->first;
			dataStringStream << '\t';
			dataStringStream << setprecision(precision) << it->second;
			dataStringStream << '\n';
		}

		return dataStringStream.str();

	}




	void HermiteSplineInterpolator::computeInternalFunctionData() const {

		if (data.size() <= 1) {
			return;
		}

		map<double,double>::const_iterator xf_iterator;
		map<double,double>::const_iterator xf_next_iterator;


		strictlyMonotone = true; 
		monotone = true;
		strictlyDecreasing = true;
		decreasing = true;
		strictlyIncreasing = true;
		increasing = true;

		xf_iterator = data.begin();
		xf_next_iterator = ++(data.begin());
		while (xf_next_iterator != data.end() &&
				xf_iterator->second == xf_next_iterator->second) {
			strictlyMonotone = false;
			strictlyIncreasing = false;
			strictlyDecreasing = false;

			++xf_iterator;
			++xf_next_iterator;
		}


		if (xf_next_iterator != data.end()) {

			if ( xf_iterator->second > xf_next_iterator->second) {
				strictlyDecreasing = true;
				decreasing = true;
				strictlyIncreasing = false;
				increasing = false;
				while(++xf_iterator, ++xf_next_iterator != data.end()) {
					if ((*xf_iterator).second <  (*xf_next_iterator).second) {
						monotone = false;
						strictlyMonotone = false;
						strictlyDecreasing = false; 
						break; 
					}
					if ((*xf_iterator).second <= (*xf_next_iterator).second) {
						strictlyMonotone = false;
						strictlyDecreasing = false; 
					}
				}
			}
			else if (xf_iterator->second < xf_next_iterator->second) {
				strictlyDecreasing = false;
				strictlyIncreasing = true;
				decreasing = false;
				increasing = true;
				while(++xf_iterator, ++xf_next_iterator != data.end()) {
					if ((*xf_iterator).second >  (*xf_next_iterator).second) {
						monotone = false;
						strictlyMonotone = false;
						strictlyIncreasing = false; 
						break; 
					}
					if ((*xf_iterator).second >= (*xf_next_iterator).second) {
						strictlyMonotone = false;
						strictlyIncreasing = false; 
					}
				}
			}
			else {
				throw("Interpolator logic error.") ;
			}

		}
		computeSimpleDerivatives();

		if (monotone) {
			adjustDerivativesForMonotoneness();
		}

		strictlyMonotoneCached = true;
		monotoneCached = true;
	}


	void HermiteSplineInterpolator::computeSimpleDerivatives() const {

		ddata.clear();

		map<double,double>::const_iterator xf_prev_iterator;
		map<double,double>::const_iterator xf_iterator;
		map<double,double>::const_iterator xf_next_iterator;
		double diff;

		xf_iterator = data.begin();
		xf_next_iterator = ++(data.begin());
		diff =
			(xf_next_iterator->second - xf_iterator->second) /
			(xf_next_iterator->first  - xf_iterator->first);
		ddata[xf_iterator->first] = diff ;

		xf_iterator = --(--(data.end()));
		xf_next_iterator = --(data.end());
		diff =
			(xf_next_iterator->second - xf_iterator->second) /
			(xf_next_iterator->first  - xf_iterator->first);
		ddata[xf_next_iterator->first] = diff ;

		if (data.size() > 2) {

			map<double,double>::const_iterator intpoint;
			for (intpoint = ++data.begin(); intpoint != --data.end(); ++intpoint) {

				map<double,double>::const_iterator lastpoint = intpoint; --lastpoint;
				map<double,double>::const_iterator nextpoint = intpoint; ++nextpoint;

				diff = (nextpoint->second - intpoint->second)/
					(2*(nextpoint->first - intpoint->first))
					+
					(intpoint->second - lastpoint->second) /
					(2*(intpoint->first - lastpoint->first));

				ddata[intpoint->first] = diff ;
			}
		}
	}



	void HermiteSplineInterpolator::adjustDerivativesForMonotoneness() const {
		map<double,double>::const_iterator point, dpoint;

		for (point = data.begin(), dpoint = ddata.begin();
				point != --data.end();
				++point, ++dpoint) {
			map<double,double>::const_iterator nextpoint, nextdpoint;
			nextpoint = point; ++nextpoint;
			nextdpoint = dpoint; ++nextdpoint;

			double delta =
				(nextpoint->second - point->second) /
				(nextpoint->first  - point->first);
			if (fabs(delta) < 1e-14) {
				ddata[point->first] = 0.0;
				ddata[nextpoint->first] = 0.0;
			} else {
				double alpha = ddata[point->first] / delta;
				double beta = ddata[nextpoint->first] / delta;

				if (! isMonotoneCoeff(alpha, beta)) {
					double tau = 3/sqrt(alpha*alpha + beta*beta);

					ddata[point->first]     = tau*alpha*delta;
					ddata[nextpoint->first] = tau*beta*delta;
				}
			}


		}


	}


} // namespace arc
