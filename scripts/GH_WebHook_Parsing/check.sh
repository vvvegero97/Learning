#!/bin/bash

STATE=`cat $1 | jq -r '.pull_request.state'`
MERGED=`cat $1 | jq '.pull_request.merged'`
PUSHER=`cat $1 | jq -r '.pusher'`
#echo pusher: $PUSHER
#echo state: $STATE , merged: $MERGED
if [ $STATE == 'closed' ] && [ $MERGED == 'true' ];
then
  echo "MERGED"
  exit 1

  elif [[ $PUSHER != 'null' ]];
  then
    echo "PUSHED"
    exit 1
  else
    echo "ERROR"
    exit 0
fi