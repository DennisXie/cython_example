cdef extern from "foolib.h":
    ctypedef struct Point:
        char name[50]
        int x
        int y
    
    ctypedef struct Distance:
        char start_name[50]
        char end_name[50]
        double distance  # just right general kind 
    
    int fibo(int n)

    Distance calcDistance(Point a, Point b)
