#!/bin/sh -e
IMAGE=thecloudpractice/kazoo_v4.3:monster-ui
docker build $BUILD_FLAGS -t $IMAGE --build-arg KAZOO_HOST="kazoo.kazoo".
