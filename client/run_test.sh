#!/bin/bash
#Usage ./run_test.sh HOST_IP SCRIPT_NAME REMOTE_SERVERS
#Example: ./run_test.sh 192.168.100.114 moviri_load_test.jmx "192.168.100.117,192.168.100.118"
docker run --rm --net=host -e HOST_IP="$1" -e SCRIPT_NAME="$2" -e REMOTE_SERVERS="$3" -v /home/mvuser/git/jmeter-prom/client/data:/tmp/data --name jmeter-client giovannipaologibilisco/jmeter-prom:client
