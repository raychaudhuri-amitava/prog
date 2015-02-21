#ifndef _MONOTCUBICINTERPOLATOR_H
#define _MONOTCUBICINTERPOLATOR_H

#include <vector>
#include <map>
#include <string>

namespace arc
{

	class HermiteSplineInterpolator {
		public:

			HermiteSplineInterpolator() { }

			double operator () (double x) const { return evaluate(x) ; }

			void addPair(double newx, double newf) throw(const char*);

			std::string toString() const;

			int getSize() const {
				return data.size();
			}


		private:

			std::map<double, double> data;

			mutable std::map<double, double> ddata;

			mutable bool strictlyMonotoneCached;
			mutable bool monotoneCached;

			mutable bool strictlyMonotone;
			mutable bool monotone;

			mutable bool strictlyDecreasing;
			mutable bool strictlyIncreasing;
			mutable bool decreasing;
			mutable bool increasing;

			double H00(double t) const {
				return 2*t*t*t - 3*t*t + 1;
			}
			double H10(double t) const {
				return t*t*t - 2*t*t + t;
			}
			double H01(double t) const {
				return -2*t*t*t + 3*t*t;
			}
			double H11(double t) const {
				return t*t*t - t*t;
			}


			void computeInternalFunctionData() const ;

			void computeSimpleDerivatives() const ;

			void adjustDerivativesForMonotoneness() const ;

			double evaluate(double x) const throw(const char*);

			bool isMonotoneCoeff(double alpha, double beta) const {
				if ((alpha*alpha + beta*beta) <= 9) {
					return true;
				} else {
					return false;
				}
			}

	};


} // namespace arc

#endif
