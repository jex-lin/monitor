#!/bin/bash
while true; do
    REPORT=`netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'`
    echo  ${REPORT}
    sleep 1
done
