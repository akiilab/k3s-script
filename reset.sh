#!/bin/bash

set -x

sudo k3s-killall.sh

sudo rm -rf /etc/rancher/k3s
sudo rm -rf /run/k3s
sudo rm -rf /run/flannel
sudo rm -rf /var/lib/rancher/k3s
sudo rm -rf /var/lib/kubelet
# sudo rm -rf /var/lib/cni
sudo rm -rf /var/etcd

# calico
sudo rm -rf /etc/cni/net.d

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
