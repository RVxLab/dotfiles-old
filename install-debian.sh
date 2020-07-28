#!/usr/bin/env bash

set -e

PACKAGES=(
    "apt-transport-https"
    "git"
    "docker"
    "zsh"
    "davfs2"
    "keepassxc"
    "software-properties-common"
    "gnupg-agent"    
    "ca-certificates"
    "tilix"
    "stow"
)

# Prerequisites
sudo apt-get install -yqq curl wget

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# KeepassXC
sudo add-apt-repository ppa:phoerious/keepassxc

# Install everything
sudo apt-get update
sudo apt-get install -yqq "${PACKAGES[@]}"

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Set groups
sudo usermod -aG docker davfs2 $USER

stow nvim zsh
