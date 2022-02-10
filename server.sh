#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 node_name [options]"
fi

NODE_NAME=$1
OPTIONS=$2

: "${NODE_NAME:?Variable not set or empty}"

# default
# sudo K3S_TOKEN=SECRET k3s server --node-name="$NODE_NAME" --write-kubeconfig-mode=644 $OPTIONS

# calico
# sudo K3S_TOKEN=SECRET k3s server --node-name="$NODE_NAME" --write-kubeconfig-mode=644 --flannel-backend=none --cluster-cidr=192.168.0.0/16 --disable-network-policy --disable=traefik $OPTIONS

# Issue: FailedScheduling didn't have free ports
# https://github.com/kubernetes/kubernetes/issues/66568#issuecomment-1002253558
sudo K3S_TOKEN=SECRET k3s server --node-name="$NODE_NAME" --write-kubeconfig-mode=644 --disable=traefik --disable=servicelb

