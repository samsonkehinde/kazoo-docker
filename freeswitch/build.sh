#!/bin/sh -e
IMAGE=thecloudpractice/kazoo_v4.3:freeswitch
docker build $BUILD_FLAGS -t $IMAGE --build-arg TOKEN="pat_NPALWziLuNiR3XcmAJoXMAcX" .
