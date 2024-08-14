#!/bin/env bash

# install required packages
sudo dnf install -y fuse-overlayfs podman python-pip

# install ansible-navigator
python3 -m pip install ansible-navigator --user
