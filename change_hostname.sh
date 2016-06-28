#!/bin/bash

if [ $# -ne 1 ]; then
    echo $0: usage: ./change_hostname.sh 'hostname'
    exit 1
fi

TARGET_KEY=HOSTNAME
REPACEMENT_VALUE=$1
CONFIG_FILE=/etc/sysconfig/network

sed -c -i "s/\($TARGET_KEY *= *\).*/\1$REPLACEMENT_VALUE/" $CONFIG_FILE

echo "changed $TARGET_KEY=$REPLACEMENT_VALUE successfully"
