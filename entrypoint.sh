#!/bin/bash
#
# Inspired by...
# o https://cardano.github.io/blog/2017/11/15/mssql-docker-container.
# o https://github.com/twright-msft/mssql-node-docker-demo-app
# 
# Start sqlserver twice...
# 1. first time, start for purpose of setting up database.
# 2. second time, start for purpose of tying it to the docker container lifecycle.

printf "In entrypoint [file=%s, ACCEPT_EULA=%s]...\n" $0 $ACCEPT_EULA

printf "Starting instance and setting up database...\n"
/opt/mssql/bin/sqlservr & setup.sh

pid=$(ps -ef|grep sqlservr|grep -v grep|awk '{ print $2 }')

printf "Restarting instance...\n"
kill -9 $pid & /opt/mssql/bin/sqlservr

