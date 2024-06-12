#!/bin/bash

if [ "$1" == "--date" ]; then
  date
fi

if [ "$1" == "--logs" ]; then
  num_files=${2:-100}
  for i in $(seq 1 $num_files); do
    echo "log$i.txt" > "log$i.txt"
    echo "Created by skrypt.sh on $(date)" >> "log$i.txt"
  done
fi




