#!/usr/bin/env bash

OUTPATH=$1
bash "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/git_em_good.sh \
    https://github.com/scikit-learn/scikit-learn.git "*.py" $OUTPATH
