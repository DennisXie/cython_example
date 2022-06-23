from setuptools import setup
from Cython.Build import cythonize

setup(
    name = "integrate_cy",
    # cythonize first param can be a list
    # annotate=True shows which code run in c, which run in python
    ext_modules=cythonize("integrate_cy.pyx", annotate=True),
    zip_safe=False,
)
