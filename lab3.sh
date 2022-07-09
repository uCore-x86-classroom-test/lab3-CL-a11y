#!/bin/sh
git submodule update
cd ucore-x86 && git checkout lab3
timeout 30 make lab3
status=$?
if [ $status -eq 124 ] #timed out
then
    exit 0
fi
exit $status