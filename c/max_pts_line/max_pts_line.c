#include<stdio.h>
#include <float.h>
#include <math.h>
#include<stdlib.h>
#include<string.h>

#define MAX(a,b) ((a) > (b) ? (a) : (b))

typedef struct Point {
int x;
int y;
} Point;

typedef struct Line {
float slope;
float intercept;
} Line;

int areEqualFloat(float a, float b) {
    if(fabs(a - b) <= FLT_EPSILON * MAX(fabs(a), fabs(b))) return 1;
    return 0;
}

int compareLine(const void* x, const void* y) {
    Line *a = (Line *)(x);
    Line *b = (Line *)(y);
    if(!areEqualFloat(a->slope,b->slope)) { 
       if(a->slope < b->slope) return -1;
       else return 1;
    }
    else if(!areEqualFloat(a->intercept,b->intercept)) {
        if(a->intercept < b->intercept) return -1;
        else return 1;
    }
    return 0;
}

void getMaxLine(Line* ln, size_t nmLines, Line* ret, size_t *maxSzs) {
    int i = 0;
    int j = 0;
    size_t* maxPts = (size_t*)calloc(nmLines,sizeof(Line));
    qsort((void*)ln,nmLines,sizeof(Line),compareLine);
    maxPts[j] = 1;
    for(i=1;i<nmLines;i++) {
        if(compareLine(&(ln[j]),&(ln[i])) == 0) {
            maxPts[j]++;
        }
        else {
            j=i;
            maxPts[j] = 1; 
        }
    }
    j = 0;
    for(i=1;i<nmLines;i++) {
        if(maxPts[i] > maxPts[j]) j = i;
    } 
    *ret = ln[j];
    *maxSzs = maxPts[j];
    free(maxPts);
}

//returns y = slope * x + intercept
//Following is an O(n^2) algo.
Line getLineMaxPoints(Point* givenPoints, size_t numPts) {
    Line *allLines = NULL;
    int i = 0;
    int j = 0;
    size_t maxi = numPts-1;
    Line retLine;
    size_t * mxSz = (size_t*)malloc(numPts*sizeof(size_t));
    allLines = (Line*)malloc(numPts*sizeof(Line));
    
    for(i = 0;i<numPts;i++) {
        for(j=0;j<(numPts-i);j++) {
            if(givenPoints[i].x == givenPoints[j].x) {
                (allLines[j]).slope = (float)(0x7fffffff); //+infinity.
                (allLines[j]).intercept = (float)(0xffffffff); //-infinity.
            }
            else {
                (allLines[j]).slope = (float)(givenPoints[i].y - givenPoints[j].y) / (float)(givenPoints[i].x - givenPoints[j].x);
                (allLines[j]).intercept = (float)(givenPoints[i].y)- (float)(givenPoints[i].x)*((allLines[j]).slope);
            }
        }
        getMaxLine(allLines,j,&(allLines[j-1]),&(mxSz[j-1]));
        if((j-1) == numPts - 1) maxi = j - 1;
        else if(mxSz[j-1] > mxSz[maxi]) maxi = j - 1;
    }
    retLine = allLines[maxi];
    free(mxSz);
    free(allLines);
    return retLine;
}

int main(void) {

    Point pts[] = {{0,0},{0,1},{1,0},{1,1},{2,1}};
    Line ln = getLineMaxPoints((Point *)pts,sizeof(pts)/sizeof(Point));
    printf("The required Line is y = %f x + %f\n",ln.slope,ln.intercept);
    
    Point pts1[] = {{0,0},{0,1},{1,0},{1,1},{2,2},{3,3},{4,4}};
    Line ln1 = getLineMaxPoints((Point *)pts1,sizeof(pts1)/sizeof(Point));
    printf("The required Line is y = %f x + %f\n",ln1.slope,ln1.intercept);
    
    Point pts2[] = {{0,0},{0,1},{1,0},{1,1},{2,2},{1,2},{2,3},{3,4},{4,5}};
    Line ln2 = getLineMaxPoints((Point *)pts2,sizeof(pts2)/sizeof(Point));
    printf("The required Line is y = %f x + %f\n",ln2.slope,ln2.intercept);
    
    return 0;
}
