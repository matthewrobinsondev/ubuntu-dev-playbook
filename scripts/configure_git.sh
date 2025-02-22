#!/bin/bash


# Prompt the user to install recommended applications
read -p "Do you want to configure global git?(y/N): " response

# Check user response
if [[ "$response" =~ ^[Yy]$ ]]; then
    # Prompt the user for their name
    read -p "Enter your Git name: " git_username

    # Prompt the user for their email
    read -p "Enter your Git email: " git_email

    # Set Git global configuration
    git config --global user.name "$git_username"
    git config --global user.email "$git_email"

    echo "Git configuration has been set:"
    echo "Git username: $git_username"
    echo "Git email: $git_email"

    ssh-keygen -t ed25519 -C "$git_email"
    ssh-add ~/.ssh/id_ed25519

    cat ~/.ssh/id_ed25519.pub
fi
