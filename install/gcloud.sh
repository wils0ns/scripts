#!/bin/bash
set -e

if [ "$EUID" -ne 0 ] ; then
  echo "Run as root"
  exit
fi

# if [ $# -eq 0 ] ; then
#     echo "Version not specified"
#     exit 1
# fi

# VERSION="$1"
# TMP_FILE="/tmp/gcloud-sdk.tar.gz"

# curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${VERSION}-linux-x86_64.tar.gz -o $TMP_FILE
# tar zxf $TMP_FILE -C /usr/local
# /usr/local/google-cloud-sdk/install.sh --usage-reporting false --path-update true --additional-components alpha -q
# ln -sfn /usr/local/google-cloud-sdk/bin/gcloud /usr/local/bin/gcloud
# rm $TMP_FILE

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

apt update
apt install -y google-cloud-sdk
