#!/bin/bash

# Install VPN reqs
sudo apt install openconnect network-manager-openconnect network-manager-openconnect-gnome

# Install SSH Client for keys
sudo apt install openssh-client

# Install Curl
sudo apt install curl -y

# Install Php
sudo apt install php -y

# Install Python 3
sudo apt install python3 -y

# Install Htop
sudo apt install htop -y

# Install batcat
sudo apt install bat -y

# Install Alacritty
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty -y

# Install Tmux
sudo apt install tmux -y

# Install Neofetch
sudo apt install neofetch -y

# Install npm
sudo apt install npm -y

# Install bun (its not an apt package yet sue me)
curl -fsSL https://bun.sh/install | bash