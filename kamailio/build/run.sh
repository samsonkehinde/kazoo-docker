#!/bin/sh -e
export SHM_MEMORY=64
export PKG_MEMORY=8

./config-local.sh

exec kamailio -E -DD -m $SHM_MEMORY -M $PKG_MEMORY
