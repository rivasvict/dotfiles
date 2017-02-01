#!/bin/bash

sudo apt-get update

# Install basic stuff
sudo apt-get -y install vim
sudo apt-get -y install tmux
sudo apt-get -y install nodejs
sudo apt-get -y install git

# Dev tools
sudo apt-get -y install npm
sudo npm install -g nodemon
sudo npm install -g jshint
sudo npm install -g jscs

# Clone dotfiles repo
git clone https://github.com/vctr90/dotfiles.git

# Configuration files
cp -frv dotfiles/.vim/ ~/
cp -fv dotfiles/.vimrc ~/
cp -frv dotfiles/.tmux/ ~/
cp -fv dotfiles/.tmux.conf ~/
cp -fv dotfiles/.bashrc ~/
cp -frv dotfiles/.fluxbox/ ~/

# Scripts
cp -fv dotfiles/scripts/vim-helpers/findAll.sh ~/
cp -fv dotfiles/scripts/vim-helpers/openAllFilesInCoincidence.sh ~/
cp -fv dotfiles/scripts/vim-helpers/replaceAllInDirectory.sh ~/
# Work
cp -fv dotfiles/scripts/work/gps-bixlabs-start.sh ~/
# Special font
cp -fv dotfiles/scripts/install_monaco_font.sh ~/

# Give permissions to run scripts
sudo chmod +x ~/findAll.sh 
sudo chmod +x ~/openAllFilesInCoincidence.sh
sudo chmod +x ~/replaceAllInDirectory.sh
sudo chmod +x ~/gps-bixlabs-start.sh
sudo chmod +x ~/install_monaco_font.sh

# Create work directories
mkdir ~/programming/
mkdir ~/programming/git/
mkdir ~/programming/git/repos/
mkdir ~/programming/git/bixlabs/

# Move dotfiles folder into correct repos directory
mv -fv dotfiles ~/programming/git/repos/

# Make node name available on the path as nodejs
sudo ln -s "$(which nodejs)" /usr/bin/node

sudo reboot
