#!/bin/bash

# Author: Chistopher Montero
# Github profile: christopherjael
# Date: 27/12/2022

# Install zsh

sudo apt install -y zsh

# Install oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

/usr/bin/zsh

# install Meslo fonts 

wget "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf" 
wget "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
wget "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
wget "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"

if [ ! -d /usr/share/fonts ]; then
    sudo mkdir /usr/share/fonts
fi

sudo mkdir /usr/share/fonts/MesloLGS

sudo mv Meslo* /usr/share/fonts/MesloLGS

# Refresh fonts cache

sudo fc-cache -f -v

# Install powerlevel10k theme

#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
#sudo echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# Install some plugins for zsh

# - zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# - zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# Change $ZSH_THEME
sed -i 's+ZSH_THEME="robbyrussell"+ZSH_THEME="powerlevel10k/powerlevel10k"+g' ~/.zshrc

# Add plugins list
sed -i 's+plugins=(git)+plugins=(git zsh-autosuggestions zsh-syntax-highlighting aws docker node terraform)+g' ~/.zshrc

# Adding alias

cat ./alias.txt >> ~/.zshrc

source ~/.zshrc
