from setuptools import setup, Extension
from Cython.Build import cythonize

setup(
    name = "ppmymath",
    # cythonize first param can be a list
    # annotate=True shows which code run in c, which run in python
    ext_modules=cythonize([Extension("pmymath", ["pmymath.pyx"], libraries=["mymath"])]),
    zip_safe=False,
)
