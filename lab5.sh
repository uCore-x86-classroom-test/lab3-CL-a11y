#!/bin/sh
git submodule update --init --recursive
cd ucore-x86 && git checkout lab5
timeout 30 make lab5
status=$?
if [ $status -eq 124 ] #timed out
then
    exit 0
fi
exit $status