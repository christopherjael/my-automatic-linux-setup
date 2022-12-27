#!/bin/bash

# Author: Chistopher Montero
# Github profile: christopherjael
# Date: 27/12/2022

# Create directories
/bin/bash ./dirs.sh

# Apt
/bin/bash ./apt.sh

# ZSH
/bin/bash ./zshconfig.sh

# setup git config
cat ./gitconfig-linux > ~/.gitconfig
