#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 node_name server_1_ip [options]"
fi

NODE_NAME=$1
SERVER_1_IP=$2
OPTIONS=$3

: "${NODE_NAME:?Variable not set or empty}"
: "${SERVER_1_IP:?Variable not set or empty}"

sudo K3S_TOKEN=SECRET k3s server --server https://$SERVER_1_IP:6443 --node-name="$NODE_NAME" $OPTIONS
