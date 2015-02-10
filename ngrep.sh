#!/bin/bash

if [ -z $1 ]; then
    printf "\E[0;31;40mPlease choose a network interface...\E[0m\n"
    exit
fi

sudo ngrep -d $1 -t '^(GET|POST) ' 'port 80'
