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
TMP_FILE="/tmp/terraform.zip"

curl https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip -o $TMP_FILE
unzip -o $TMP_FILE -d /usr/local/bin/
rm $TMP_FILE
