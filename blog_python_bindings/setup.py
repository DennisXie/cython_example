from setuptools import setup, Extension
from Cython.Build import cythonize

setup(
    name = "pfoolib",
    ext_modules=cythonize([
        Extension("pfoolib", ["pfoolib.pyx"], libraries=["foolib"])
    ]),
    zip_safe=False
)
