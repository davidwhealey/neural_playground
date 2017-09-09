#!/usr/bin/env bash
FILE=$1
TEST_FRACTION=$2
TARGET_DIRECTORY=$3

mkdir -p $TARGET_DIRECTORY

N=`cat $FILE | wc -c`
TEST_N=`python -c "print(int($TEST_FRACTION * $N))"`
TRAIN_N=$(($N-$TEST_N))

head $FILE -c $TRAIN_N > $TARGET_DIRECTORY/train
tail $FILE -c $TEST_N > $TARGET_DIRECTORY/test
