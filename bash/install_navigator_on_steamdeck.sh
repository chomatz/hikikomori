#!/bin/env bash

# install required packages
sudo steamos-readonly disable
sudo pacman -Syu fuse-overlayfs podman python-pip
sudo steamos-readonly enable

# install ansible-navigator
python3 -m pip install ansible-navigator --user
