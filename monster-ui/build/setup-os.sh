#!/bin/sh -e
yum -y install monster-ui* httpd

# Update Monster's config for Crossbar's URL
sed -i "/define({/a \ \ \ \ api: { 'default': 'http://${KAZOO_HOST}:8000/v2/' }," /var/www/html/monster-ui/js/config.js