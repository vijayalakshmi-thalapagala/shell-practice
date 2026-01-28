#!/bin/bash

START_TIME=$(date +%s)

echo "this is current date $START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "this is current date $ENDTIME"


DIFF=$(($END_TIME-$START_TIME))
echo "this is the diff $DIFF"