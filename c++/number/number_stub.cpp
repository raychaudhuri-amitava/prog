/* Generated file, do not edit */

#ifndef CXXTEST_RUNNING
#define CXXTEST_RUNNING
#endif

#define _CXXTEST_HAVE_STD
#include <cxxtest/TestListener.h>
#include <cxxtest/TestTracker.h>
#include <cxxtest/TestRunner.h>
#include <cxxtest/RealDescriptions.h>
#include <cxxtest/ErrorPrinter.h>

int main() {
 return CxxTest::ErrorPrinter().run();
}
#include "number_stub.hpp"

static NumberTestSuit suite_NumberTestSuit;

static CxxTest::List Tests_NumberTestSuit = { 0, 0 };
CxxTest::StaticSuiteDescription suiteDescription_NumberTestSuit( "number_stub.hpp", 8, "NumberTestSuit", suite_NumberTestSuit, Tests_NumberTestSuit );

static class TestDescription_NumberTestSuit_testPositiveNumberOutput : public CxxTest::RealTestDescription {
public:
 TestDescription_NumberTestSuit_testPositiveNumberOutput() : CxxTest::RealTestDescription( Tests_NumberTestSuit, suiteDescription_NumberTestSuit, 17, "testPositiveNumberOutput" ) {}
 void runTest() { suite_NumberTestSuit.testPositiveNumberOutput(); }
} testDescription_NumberTestSuit_testPositiveNumberOutput;

static class TestDescription_NumberTestSuit_testPositiveNumberInput : public CxxTest::RealTestDescription {
public:
 TestDescription_NumberTestSuit_testPositiveNumberInput() : CxxTest::RealTestDescription( Tests_NumberTestSuit, suiteDescription_NumberTestSuit, 23, "testPositiveNumberInput" ) {}
 void runTest() { suite_NumberTestSuit.testPositiveNumberInput(); }
} testDescription_NumberTestSuit_testPositiveNumberInput;

static class TestDescription_NumberTestSuit_testNegativeNumberOutput : public CxxTest::RealTestDescription {
public:
 TestDescription_NumberTestSuit_testNegativeNumberOutput() : CxxTest::RealTestDescription( Tests_NumberTestSuit, suiteDescription_NumberTestSuit, 31, "testNegativeNumberOutput" ) {}
 void runTest() { suite_NumberTestSuit.testNegativeNumberOutput(); }
} testDescription_NumberTestSuit_testNegativeNumberOutput;

static class TestDescription_NumberTestSuit_testNegativeNumberInput : public CxxTest::RealTestDescription {
public:
 TestDescription_NumberTestSuit_testNegativeNumberInput() : CxxTest::RealTestDescription( Tests_NumberTestSuit, suiteDescription_NumberTestSuit, 37, "testNegativeNumberInput" ) {}
 void runTest() { suite_NumberTestSuit.testNegativeNumberInput(); }
} testDescription_NumberTestSuit_testNegativeNumberInput;

static class TestDescription_NumberTestSuit_testCtors : public CxxTest::RealTestDescription {
public:
 TestDescription_NumberTestSuit_testCtors() : CxxTest::RealTestDescription( Tests_NumberTestSuit, suiteDescription_NumberTestSuit, 45, "testCtors" ) {}
 void runTest() { suite_NumberTestSuit.testCtors(); }
} testDescription_NumberTestSuit_testCtors;

static class TestDescription_NumberTestSuit_testAssignment : public CxxTest::RealTestDescription {
public:
 TestDescription_NumberTestSuit_testAssignment() : CxxTest::RealTestDescription( Tests_NumberTestSuit, suiteDescription_NumberTestSuit, 67, "testAssignment" ) {}
 void runTest() { suite_NumberTestSuit.testAssignment(); }
} testDescription_NumberTestSuit_testAssignment;

static class TestDescription_NumberTestSuit_testVariousNumbers : public CxxTest::RealTestDescription {
public:
 TestDescription_NumberTestSuit_testVariousNumbers() : CxxTest::RealTestDescription( Tests_NumberTestSuit, suiteDescription_NumberTestSuit, 96, "testVariousNumbers" ) {}
 void runTest() { suite_NumberTestSuit.testVariousNumbers(); }
} testDescription_NumberTestSuit_testVariousNumbers;

static class TestDescription_NumberTestSuit_testSameSignAdd : public CxxTest::RealTestDescription {
public:
 TestDescription_NumberTestSuit_testSameSignAdd() : CxxTest::RealTestDescription( Tests_NumberTestSuit, suiteDescription_NumberTestSuit, 117, "testSameSignAdd" ) {}
 void runTest() { suite_NumberTestSuit.testSameSignAdd(); }
} testDescription_NumberTestSuit_testSameSignAdd;

#include <cxxtest/Root.cpp>
