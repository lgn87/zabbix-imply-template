#!/bin/bash

USER="username"
PASSWORD="password"


json=$(curl -s -u $USER:$PASSWORD http://$1:8081/druid/coordinator/v1/loadstatus?simple)
value=$(echo $json | jq . | grep -v { | grep -v } | cut -f2 -d":" | cut -f1 -d"," | grep -v 0)

if [ -z $value ];
then
   echo "1"
else
   echo "0"
fi
