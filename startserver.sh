#!/bin/bash

./server.sh &

process="$!"

echo "Setting oom_score_adj on process $process"
echo -1000 | tee /proc/$process/oom_score_adj
