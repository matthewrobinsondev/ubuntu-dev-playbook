#!/bin/bash

# Remove snap
sudo apt remove snap -y

# Install curl first
sudo apt install curl -y

# Add wezterm source
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

# Add node 20 source
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

# Add source for eza
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list

# Install packages
sudo apt install openconnect \
  network-manager-openconnect \
  network-manager-openconnect-gnome \
  openssh-client \
  php \
  python3 \
  luarocks \
  nodejs \
  htop \
  bat \
  neofetch \
  unzip \
  zsh \
  zoxide \
  wezterm \
  cmake \
  ninja-build gettext cmake curl build-essential \
  stow \
  fzf \
  ripgrep \
  xclip \
  eza -y
