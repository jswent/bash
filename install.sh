#!/bin/bash 

# check if .bash already exists, backup
if [ -d "$HOME/.bash" ]; then
  while true; do
    read -p "Existing bash config found, do you wish to overwrite? Existing config will be stored in '$HOME/.bash.old' (Y/n) " yn
    case $yn in
        [Yy]* ) mv -f "$HOME/.bash" "$HOME/.bash.old"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
  done
fi

# check if .bashrc already exists, backup
if [ -f "$HOME/.bashrc" ]; then
  mv  "$HOME/.bashrc" "$HOME/.bashrc.old"
fi 

# clone new bash config 
git clone https://github.com/jswent/bash "$HOME/.bash"

# link bash config to .bashrc 
ln -s "$HOME/.bash/.bashrc" "$HOME/.bashrc"
