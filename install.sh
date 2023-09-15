#!/bin/bash

set -e

# Update package list and upgrade existing packages
sudo apt update
sudo apt upgrade -y

# Install Apt packages I frequently use
./scripts/install_apt_packages.sh

# Install oh my zsh
./scripts/install_oh_my_zsh.sh

# Install Docker
./scripts/install_docker.sh

# Install Applications
./scripts/install_applications.sh

# Install Config
sudo cp -R dotconfigs/* ~/.config/

# Install Hotkeys
./scripts/set_custom_hotkeys.sh

# Configure Git
./scripts/configure_git.sh
