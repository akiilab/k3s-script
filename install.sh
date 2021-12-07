#!/bin/bash

# install options
# https://rancher.com/docs/k3s/latest/en/installation/install-options/
curl -sfL https://get.k3s.io | INSTALL_K3S_SKIP_ENABLE=true sh -
