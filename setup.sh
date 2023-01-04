#!/bin/bash

# Author: Chistopher Montero
# Github profile: christopherjael
# Date: 27/12/2022

# Install basic programs
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y bpytop wget curl exa neovim htop neofetch bat git expect
 
# Create directories
/bin/bash ./dirs.sh

# ZSH, oh-my-zsl
# Apt
/bin/bash ./apt.sh

# ZSH
/bin/bash ./zshconfig.sh

# setup git config
cat ./gitconfig-linux > ~/.gitconfig
