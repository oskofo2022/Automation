#!/bin/bash
	
##############################
## Get Environment Variables #
##############################
source ./Automation/docker_getenv.sh
source ./Automation/read_config.sh

#####################
## Docker get login #
#####################
docker login --username=$DOCKER_HUB_LOGIN_USR --password=$DOCKER_HUB_LOGIN_PSW

###############################################
## Pushing the image to repository on Dockerhub #
###############################################
docker push $REGISTRY/$REPOSITORY:$VERSION || exit 1
set +x	
