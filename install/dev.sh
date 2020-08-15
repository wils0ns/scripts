#!/bin/bash
set -e

INSTALL_CMD_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"



function install(){
    echo "*** Installing $@"
    . "${INSTALL_CMD_DIR}/${1}" ${2}
}

install gcloud 305.0.0
install go 1.15
install terraform 0.13.0

# for file in ~/gdrive/_home/.bashrc.d/*.bashrc;
# do
#   chmod +x $file
#   source $file
# done