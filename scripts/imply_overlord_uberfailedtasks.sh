#!/bin/bash

USER="username"
PASSWORD="password"

curl -s -u $USER:$PASSWORD 'http://'$1':8090/druid/indexer/v1/tasks?datasource=uber&state=complete&max=16' | jq . | grep -i fail | wc -l
