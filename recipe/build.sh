#!/usr/bin/env bash

cd env/python

# MODE=omp python setup.py install

# No OMP packages for now (for consistency with PyPI), those will be available
# once the corresponding PyPI packages are generated.

if [ "$(uname -s)" == "Darwin" ]; then
    export MACOSX_DEPLOYMENT_TARGET="10.15"
fi

${PYTHON} -m pip install . -vv
