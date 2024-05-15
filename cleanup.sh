#!/bin/bash

# Define the list of sample ports
sample_ports=(6443  2379 2380 10250 10251 10252 10257 10259)

# Kill processes running on the sample ports
for port in "${sample_ports[@]}"; do
    sudo lsof -ti:$port | xargs --no-run-if-empty sudo kill
done

# Remove everything inside /etc/kubernetes/ with sudo
sudo rm -rf /etc/kubernetes/*

# Remove everything inside /var/lib/etcd/ with sudo
sudo rm -rf /var/lib/etcd/member
