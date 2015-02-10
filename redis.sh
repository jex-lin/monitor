#!/bin/bash

if [ -z $1 ]; then
    printf "\E[0;31;40mPlease enter a string of redis command... (ex : ./redis.sh keys *)\E[0m\n"
    exit
fi
watch -n 1 redis-cli $1 $2
