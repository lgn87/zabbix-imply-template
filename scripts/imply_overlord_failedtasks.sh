#!/bin/bash

USER="username"
PASSWORD="password"

curl -s -u $USER:$PASSWORD 'http://'$1':8090/druid/indexer/v1/tasks?datasource='$2'&state=complete&max='$3'&type=index_kafka' | jq . | grep -i fail | wc -l

