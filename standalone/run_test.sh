#!/bin/bash
#Usage ./run_test.sh HOST_IP SCRIPT_NAME REMOTE_SERVERS SERVER_IP
# HOST_IP = jmeter master ip (used for rmi from injectors)
# SCRIPT_NAME = name of thescript to run (must be in the data directory)
# REMOTE_SERVERS = list of injector ips
# SERVER_IP = the ip of the server hosting the application (this is mapped to the "url" variable inside the jmeter script)
#Example: ./run_test.sh 192.168.100.114 moviri_load_test.jmx 192.168.100.116
docker run --rm --net=host -e HOST_IP="$1" -e SCRIPT_NAME="$2" -e SERVER_IP="$3" -v /home/mvuser/git/jmeter-prom/client/data:/tmp/data --name jmeter-client giovannipaologibilisco/jmeter-prom:client
