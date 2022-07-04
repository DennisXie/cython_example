#include <string.h>
#include <math.h>

#include "foolib.h"

int fibo(int n) {
    int a = 0;
    int b = 1;
    if (n == 0) {
        return a;
    }
    if (n == 1) {
        return b;
    }
    int i;
    int c;
    for (i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

Distance calcDistance(Point a, Point b) {
    Distance distance;
    strcpy(distance.start_name, a.name);
    strcpy(distance.end_name, b.name);
    int x = b.x - a.x;
    int y = b.y - a.y;
    double d2 = (double) (x * x + y * y);
    distance.distance = sqrt(d2);
    return distance;
}
