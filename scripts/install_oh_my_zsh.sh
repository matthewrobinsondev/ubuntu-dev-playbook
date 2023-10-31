#!/bin/bash

if [ ! -d ~/.oh-my-zsh ]; then
    echo "~/.oh-my-zsh does not exist."

    read -p "Do you want to install oh my zsh? (y/N): " response

    # Check user response
    if [[ "$response" =~ ^[Yy]$ ]]; then

        sudo apt install zsh -y
        # Prompt to install oh my zsh
        # Install Oh My Zsh
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

        # Prompt to install my config
        # Plugins
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

        # This requires input
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install

        cp ../zshrc ~/.zshrc

        sudo apt-get install fonts-powerline
    fi
else
    echo "~/.oh-my-zsh exists."
fi