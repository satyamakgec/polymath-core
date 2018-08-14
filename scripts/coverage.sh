#!/usr/bin/env bash

SOLIDITY_COVERAGE=true scripts/test.sh
pid=$! # Get PID of background command
while kill -0 $pid  # Signal 0 just tests whether the process exists
do
  echo -n "waiting...."
  sleep 180;
done