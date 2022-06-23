### Caution
* The pxd file and pyx file must have different name, such as cmymath.pxd and pmymath.pyx
* The C library must have the name "libxxx.so" "xxx.o" and the setup only use xxx
* Must add CFLAGS and LDFLAGS before setup, CFLAGS="-I/path/to/include" LDFLAGS="-L/path/to/library"
* export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/path/to/library before use this module
* export PYTHONPATH before use this module
* shared library reference to https://www.cprogramming.com/tutorial/shared-libraries-linux-gcc.html