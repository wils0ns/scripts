#!/bin/bash
set -e

mkdir ~/.bashrc.d -p

bashrcd = <<EOF
for file in ~/.bashrc.d/*.bashrc;
do
  chmod +x $file
  source $file
done
EOF