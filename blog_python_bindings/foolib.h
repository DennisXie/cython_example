#ifndef __FOOLIB_H
#define __FOOLIB_H
typedef struct _Point {
    char name[50];
    int x;
    int y;
} Point;

typedef struct _Distance {
    char start_name[50];
    char end_name[50];
    double distance;
} Distance;

extern int fibo(int n);

extern Distance calcDistance(Point a, Point b);
#endif