#!/bin/sh -e
FLAGS=${FLAGS:-"-td"}
NETWORK=${NETWORK:-"kazoo"}
IMAGE=${2:-"thecloudpractice/kazoo"}
NAME=${NAME:-"kazoo.$NETWORK"}

if [ -n "$(docker ps -aq -f name=$NAME)" ]
then
	echo -n "stopping: "
	docker stop -t 1 $NAME
	echo -n "removing: "
	docker rm -f $NAME
fi

echo -n "starting: $NAME "
docker run $FLAGS --net $NETWORK -h $NAME -p 8000:8000 -p 5555:5555 --name $NAME --env NETWORK=kazoo \
	--env COUCHDB=couchdb.$NETWORK --env RABBITMQ=rabbitmq.$NETWORK $IMAGE
