#!/bin/bash

# Prompt the user to install recommended applications
read -p "Do you want to install the recommended applications using snap? (y/N): " response

# Check user response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "Installing recommended applications using snap..."

    # Install VS Code
    sudo snap install code --classic

    # Install Teams
    sudo snap install teams-for-linux

    # Install PHPStorm
    sudo snap install phpstorm --classic

    # Install DBeaver
    sudo snap install dbeaver-ce

    # Install Obsidian (Note-taking app)
    sudo snap install obsidian --classic

    # Install Bitwarden Password Manager
    sudo snap install bitwarden

    # Install Insomnia HTTP client
    sudo snap install insomnia

    # Install Postman HTTP Client
    sudo snap install postman

    # Install Chromium
    sudo snap install chromium

    # Install Spotify
    sudo snap install spotify
else
    echo "Continuing without installing recommended applications."
fi