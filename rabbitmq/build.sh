#!/bin/sh -e
IMAGE=thecloudpractice/kazoo_v4.3:rabbitmq
docker build $BUILD_FLAGS -t $IMAGE .
