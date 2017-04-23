ENVIRONMENT CONFIGURATION FOR VICTOR RIVAS
==========================================

This is just my environment configuration. It is intended for
ubuntu-based distros. Hope you like it.

**Installation**

Get the installation file
`wget `

Give it permissions
`sudo chmod +x install.sh`

Run it
`./install.sh`

IMPORTANT
---------

For youcompleteme support on ubuntu 16.04 use the following guide
https://askubuntu.com/questions/775059/vim-python-support-on-ubuntu-16-04

the procedure is:

Python support in vim

`sudo apt-get install -y python-software-properties software-properties-common`

Add vim-gtk repos

```
# add this repo so that vim has python 4? compiled in to support
# plugins like gundo
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
```
Install vim-gtk which comes with all of the tools for vim


`sudo apt-get install -y vim-gtk`
