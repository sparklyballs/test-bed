#!/bin/bash

if [ -z "$BASELIST" ]; then
APTLIST="$APTLIST"
else
APTLIST="$BASELIST$APTLIST"

apt-get update -qq
apt-get --only-upgrade install \
"$APTLIST" -qqy
