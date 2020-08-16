#!/bin/bash
set -e

if [ "$EUID" -ne 0 ] ; then
  echo "Run as root"
  exit
fi

if [ $# -eq 0 ] ; then
    echo "Version not specified"
    exit 1
fi

VERSION="$1"

wget -O - https://repo.saltstack.com/py3/ubuntu/20.04/amd64/${VERSION}/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo "deb http://repo.saltstack.com/py3/ubuntu/20.04/amd64/${VERSION} focal main" > /etc/apt/sources.list.d/saltstack.list
apt update
apt install salt-minion -y
