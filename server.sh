#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 node_name [options]"
fi

NODE_NAME=$1
OPTIONS=$2

: "${NODE_NAME:?Variable not set or empty}"

sudo K3S_TOKEN=SECRET k3s server --node-name="$NODE_NAME" --write-kubeconfig-mode=644 $OPTIONS

