# cpdef declared function can be used by python
cpdef double f2(double x):
    return x * 2

# cpdef declared function can't be used by python
cdef double f(double x) except? -2:
    return x ** 2 - x

def integrate_f(double a, double b, int N):
    cdef int i
    cdef double s
    cdef double dx
    s = 0
    dx = (b - a) / N
    for i in range(N):
        s += f(a + i * dx)
    return s * dx
