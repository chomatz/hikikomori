#!/bin/env bash

# install required packages
sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate holo
sudo pacman -Syu fuse-overlayfs podman python-pip
sudo steamos-readonly enable

# install ansible-navigator
python3 -m pip install ansible-navigator --user --break-system-packages
