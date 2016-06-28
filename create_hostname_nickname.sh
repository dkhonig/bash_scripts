#!/bin/bash

if [ $# -ne 1 ]; then
    echo $0: usage: ./create_hostname_nickname.sh 'nickname'
    exit 1
fi

nickname=$1
sudo sh -c 'echo "export NICKNAME=$nickname" > /etc/profile.d/prompt.sh'
echo "nickname has been successfully set to $nickname"
