#!/bin/bash

START_TIME=$(date +%s)

echo "this is current date $START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "this is end date $END_TIME"


DIFF=$(($END_TIME-$START_TIME))
echo "this is the diff $DIFF in seconds"

START=$(date +%H%M%S)
echo "this is the START $START time"

sleep 10

END=$(date +%H%M%S)
echo "this is the END $END time"

DIFF1=$(($START-$END))

echo "this is the expected $DIFF1 in seconds"