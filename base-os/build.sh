#!/bin/sh -e
IMAGE=thecloudpractice/kazoo_v4.3:base-os
docker build $BUILD_FLAGS -t $NETWORK/base-os .
