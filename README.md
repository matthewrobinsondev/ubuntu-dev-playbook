# Purpose
Spin up a working development enviroment with ease.

This install script installs every package required to run my current workflow. Pulls the dotfiles down & installs any application required. It also installs a few languages I commonly work on.

Things like the hotkeys, configurations, fonts etc are often a pain to maintain. Will be trying my best to keep this updated & leaving the majority of it optional.

# Installation

Should only need git, which would come with most ubuntu/gnome builds.

Clone the repo `https://github.com/matthewrobinsondev/ubuntu-dev-playbook.git`

Install `./install.sh`

## Troubleshooting
### Neovim
- I have a hardcoded obsidian location which will error on install, simply go remove that from the `obsidian.lua` file in the dotfiles repo.
- LSP will try and load a, *incorrectly spelled*, `licence.txt` file for `intelephense`. Comment the line out in the `lsp.lua` file. Mason will work after this.

# Notable Inclusions
## Workflow
- [x] Neovim
- [x] Wezterm
- [x] Git config & SSH key
- [x] Docker

## Languages
- [x] Go
- [x] PHP
- [x] NodeJs
- [x] Gleam
- [x] Rust

## Utilities
- [x] Stow
- [x] Zoxide
- [x] htop
- [x] bat
- [x] eza
- [x] Maple mono font
