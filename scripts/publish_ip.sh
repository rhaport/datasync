#!/bin/bash

SSH_CONNECTION_STRING=$1

while true; do

  ssh "$SSH_CONNECTION_STRING" 'bash -s' < script.sh
  echo "Published on `date`, return code: $?"

  for x in `seq 1 60`; do
    sleep 60
    echo "$x: `date `"
  done

done

