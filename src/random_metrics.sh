#!/bin/bash

var="cpu_usage "$(( ( RANDOM % 100 )  + 1 ))$'\n'
echo $var

curl -X POST -H  "Content-Type: text/plain" --data "$var" http://localhost:9091/metrics/job/top/instance/machine

