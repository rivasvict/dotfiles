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

# Install Vundle dependencies for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Update YouCompleteme
cd ~/.vim/bundle/YouCompleteMe/
git submodule update --init --recursive
vim +PluginInstall +qall

# Recompile You complete me for vim
sudo apt-get install -y build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:george-edison55/cmake-3.x
sudo apt-get update
sudo apt-get install cmake
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
./install.py

# Move dotfiles folder into correct repos directory
mv -fv ~/dotfiles ~/programming/git/repos/

# Make node name available on the path as nodejs
sudo ln -s "$(which nodejs)" /usr/bin/node

sudo reboot
