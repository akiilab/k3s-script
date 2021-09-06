#!/bin/bash

sudo k3s-killall.sh

sudo rm -rf /etc/rancher/k3s
sudo rm -rf /run/k3s
sudo rm -rf /run/flannel
sudo rm -rf /var/lib/rancher/k3s
sudo rm -rf /var/lib/kubelet
