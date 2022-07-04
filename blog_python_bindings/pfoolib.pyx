import cython
cimport pfoolib

from libc.string cimport strcpy, strlen

# name can't be same as the pfoolib.Point
cdef class PyPoint:
    cdef public bytes name
    cdef public int x
    cdef public int y

    # special function can only use def and can't have except
    def __init__(self, str name, int x, int y):
        self.name = name.encode("utf-8")
        self.x = x
        self.y = y
    
    cdef pfoolib.Point toCPoint(self):
        cdef pfoolib.Point p
        cdef char* c_name = self.name
        strcpy(p.name, c_name)
        p.x = self.x
        p.y = self.y
        return p

cdef class PyDistance:
    cdef public str start_name
    cdef public str end_name
    cdef public double distance

    def __init__(self, char* start_name, char* end_name, float distance):
        self.start_name = start_name[:strlen(start_name)].decode("utf-8")
        self.end_name = end_name[:strlen(end_name)].decode("utf-8")
        self.distance = distance
    
    cdef pfoolib.Distance toCDistance(self):
        cdef pfoolib.Distance d
        d.start_name = self.start_name
        d.end_name = self.end_name
        d.distance = self.distance


cpdef PyDistance pyCalcDistance(PyPoint a, PyPoint b):
    cdef pfoolib.Point cpa = a.toCPoint()
    cdef pfoolib.Point cpb = b.toCPoint()
    cdef pfoolib.Distance dis = pfoolib.calcDistance(cpa, cpb)
    d = PyDistance(dis.start_name, dis.end_name, dis.distance)
    return d
