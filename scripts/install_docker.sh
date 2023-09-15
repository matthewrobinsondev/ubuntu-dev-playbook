#!/bin/bash

echo "Installing Docker"

sudo apt install docker
sudo apt install docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service