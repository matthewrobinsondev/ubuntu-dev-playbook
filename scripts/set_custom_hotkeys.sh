#!/bin/bash

# Prompt the user to install recommended applications
read -p "Do you want to set custom gnome hotkeys? (y/N): " response

# Check user response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "Setting Custom Hotkeys"

    # Remove existing dash to dock hotkeys
    gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
    gsettings set org.gnome.shell.keybindings switch-to-application-1 []
    gsettings set org.gnome.shell.keybindings switch-to-application-2 []
    gsettings set org.gnome.shell.keybindings switch-to-application-3 []
    gsettings set org.gnome.shell.keybindings switch-to-application-4 []
    gsettings set org.gnome.shell.keybindings switch-to-application-5 []
    gsettings set org.gnome.shell.keybindings switch-to-application-6 []
    gsettings set org.gnome.shell.keybindings switch-to-application-7 []
    gsettings set org.gnome.shell.keybindings switch-to-application-8 []
    gsettings set org.gnome.shell.keybindings switch-to-application-9 []

    # Disable dynamic workspaces
    gsettings set org.gnome.mutter dynamic-workspaces false

    # Set workspaces to be 6
    gsettings set org.gnome.desktop.wm.preferences num-workspaces 6

    # Set workspace 1-6 to be used by Super+(Corresponding number)
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super>5']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super>6']"

    # Set move to workspace 1-6 to be used by Super+Shift+(Corresponding number)
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super><Shift>1']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Super><Shift>2']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Super><Shift>3']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Super><Shift>4']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Super><Shift>5']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Super><Shift>6']"

    gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
    gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"
fi
