#!/bin/bash

PROCESS_PID=`pidof ${1}`

while true;do
    MEM=`cat /proc/$PROCESS_PID/status | grep VmRSS | awk '{printf $2}'`
    FD=`cat /proc/sys/fs/file-nr|awk '{printf $1}'`
    TIME=`date +%s`

    echo "Time:${TIME} IO:${FD} Mem:${MEM}"
    sleep 1
done
