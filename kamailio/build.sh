#!/bin/sh -e
IMAGE=thecloudpractice/kazoo_v4.3:kamailio
docker build $BUILD_FLAGS -t $IMAGE .
