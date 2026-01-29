#!/bin/bash

NUMBER=$1

if [$NUMBER -gt 20 ]; then
    echo "This given number $NUMBER is greater than 20"
elif [$NUMBER -eq 20 ]; then
    echo "This given number $NUMBER is equal to 20"
else
    echo "This given number $NUMBER is less than to 20"