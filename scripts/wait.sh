#!/bin/bash

tail -f /dev/null >/tmp/apt-get.log & # Run in background, with output redirected
pid=$! # Get PID of background command
while kill -0 $pid  # Signal 0 just tests whether the process exists
do
  echo -n "executing"
  sleep 5;
done