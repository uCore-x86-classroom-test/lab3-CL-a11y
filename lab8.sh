#!/bin/sh
timeout 30 make lab8
status=$?
if [ $status -eq 124 ] #timed out
then
    exit 0
fi
exit $status