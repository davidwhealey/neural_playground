#!/usr/bin/env bash
FILE=$1
TEST_FRACTION=$2
TARGET_DIRECTORY=$3

echo $FILE
echo $TARGET_DIRECTORY

mkdir -p $TARGET_DIRECTORY

N=`cat $FILE | wc -c`
TEST_N=`python -c "print(int($TEST_FRACTION * $N))"`
TRAIN_N=$(($N-$TEST_N))

head -c $TRAIN_N $FILE  > $TARGET_DIRECTORY/train
tail -c $TEST_N $FILE > $TARGET_DIRECTORY/test
