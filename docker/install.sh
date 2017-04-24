#!/bin/bash

# Only install settings when docker-machine available.
if test ! $(which docker-machine); then exit 0; fi

docker-machine create --driver virtualbox default

# use docker-machine default
LAUNCH_PATH=$HOME/Library/LaunchAgents
PLIST=com.docker.machine.default.plist

if [[ -d $LAUNCH_PATH ]] && [[ ! -a $LAUNCH_PATH/$PLIST ]]
then
  cp $(dirname $0)/$PLIST $LAUNCH_PATH/$PLIST
  echo "Added '$LAUNCH_PATH/$PLIST'"
fi
