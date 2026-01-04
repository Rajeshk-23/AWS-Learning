#!/bin/bash
set -e

CONTAINER_NAME=rajeshk23-simple-python-flask-app

if docker ps -q --filter "name=$CONTAINER_NAME" | grep -q .; then
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
fi
