#!/bin/sh -e

ROOT=/etc/kazoo/kamailio

MY_IP=$(hostname -i)
MY_HOSTNAME=$(hostname)

# rabbitmq
sed -i "s/MY_AMQP_URL!.*!/MY_AMQP_URL!kazoo:\/\/guest:guest@$RABBITMQ:5672!/g" $ROOT/local.cfg

# Update the hostname in the config
sed -i "s/kamailio\.2600hz\.com/${MY_HOSTNAME}/g" $ROOT/local.cfg

# Update the IP addresses
sed -i "s/127\.0\.0\.1/${MY_IP}/g" /etc/kazoo/kamailio/local.cfg