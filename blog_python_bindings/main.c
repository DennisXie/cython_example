#include <stdio.h>
#include <string.h>
#include "foolib.h"

int main(int args, char** argv) {
    printf("%d\n", fibo(5));
    Point a;
    Point b;
    strcpy(a.name, "abc\0");
    a.x = 0;
    a.y = 10;
    strcpy(b.name, "cde\0");
    b.x = 10;
    b.y = 0;
    Distance d = calcDistance(a, b);
    printf("distance: %s %s %f\n", d.start_name, d.end_name, d.distance);
    return 0;
}
