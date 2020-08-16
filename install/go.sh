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
TMP_FILE="/tmp/go.tar.gz"

curl https://dl.google.com/go/go${VERSION}.linux-amd64.tar.gz -o $TMP_FILE
tar zxf $TMP_FILE -C /usr/local
ln -sfn /usr/local/go/bin /usr/local/bin/go
rm $TMP_FILE
