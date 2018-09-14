#!/bin/bash
echo This is a test script. It demonstrates testcase failure or success.
result=1
if [ x"$1" != x ]; then
  echo Use $1 as the result
  result="$1"
fi
exit $result
