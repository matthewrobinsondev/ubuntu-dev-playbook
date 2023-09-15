#!/bin/bash


# Prompt the user to install recommended applications
read -p "Do you want to configure global git?(y/N): " response

# Check user response
if [[ "$response" =~ ^[Yy]$ ]]; then
    # Prompt the user for their name
    read -p "Enter your Git username: " git_username

    # Prompt the user for their email
    read -p "Enter your Git email: " git_email

    # Set Git global configuration
    git config --global user.name "$git_username"
    git config --global user.email "$git_email"

    echo "Git configuration has been set:"
    echo "Git username: $git_username"
    echo "Git email: $git_email"
fi