#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "missing file name"
elif [ "$#" -gt 1 ]; then
  echo "only one argument is allowed"
else
  if [ -f $1 ]; then
    result=$(wc -l $1 | tr -dc '0-9')
    echo "$result lines in $1"
  else
    echo "$1 not found"
  fi
fi
