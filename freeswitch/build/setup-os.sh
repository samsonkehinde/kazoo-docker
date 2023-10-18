#!/bin/sh -e

# Download and install updated FreeSWITCH repository
echo "signalwire" > /etc/yum/vars/signalwireusername
echo ${TOKEN} > /etc/yum/vars/signalwiretoken
wget https://$(< /etc/yum/vars/signalwireusername):$(< /etc/yum/vars/signalwiretoken)@freeswitch.signalwire.com/repo/yum/centos-release/freeswitch-release-repo-0-1.noarch.rpm
rpm -i --replacefiles freeswitch-release-repo-0-1.noarch.rpm

# Install SNGREP
rpm --import http://packages.irontec.com/public.key
yum update
yum install sngrep

# Install Freeswitch
yum install kazoo-freeswitch
