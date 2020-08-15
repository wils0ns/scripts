#!/bin/bash
set -e

if [ $# -eq 0 ] ; then
    echo "No package specified"
    exit 1
fi

apt update
apt install ${@:1} -y
