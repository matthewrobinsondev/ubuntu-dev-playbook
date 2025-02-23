#!/bin/bash

set -e

# Update package list and upgrade existing packages
sudo apt update
sudo apt upgrade -y

# Install Apt packages & apps
./scripts/install_apt_packages.sh
./scripts/install_go.sh
./scripts/install_applications.sh

# Install Fonts, takes a hot min
./scripts/install_fonts.sh

# Install Docker
./scripts/install_docker.sh

# Install composer
./scripts/install_composer.sh

# Set custom gnome hotkeys
./scripts/set_custom_hotkeys.sh

# Create git config, could create ssh key
./scripts/configure_git.sh

# Pull down dotfiles
git clone https://github.com/matthewrobinsondev/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles && stow .

# use zsh
chsh -s $(which zsh)

# cleanup anybits
sudo apt autoremove
