#!/bin/env bash

echo this script assumes that ~/.ansible/collections is empty
sleep 3
ansible-galaxy install -r collections/requirements.yml
mv ~/.ansible/collections/ansible_collections collections/.
