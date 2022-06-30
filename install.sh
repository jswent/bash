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
echo "Creating symlink $HOME/.bash/.bashrc -> $HOME/.bashrc"
ln -s "$HOME/.bash/.bashrc" "$HOME/.bashrc"

# check if fzf is installed
if ! command -v fzf &> /dev/null; then
  
  # get os name 
  if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
  elif type lsb_release >/dev/null 2>&1; then
      # linuxbase.org
      OS=$(lsb_release -si)
      VER=$(lsb_release -sr)
  elif [ -f /etc/lsb-release ]; then
      # For some versions of Debian/Ubuntu without lsb_release command
      . /etc/lsb-release
      OS=$DISTRIB_ID
      VER=$DISTRIB_RELEASE
  elif [ -f /etc/debian_version ]; then
      # Older Debian/Ubuntu/etc.
      OS=Debian
      VER=$(cat /etc/debian_version)
  elif [ -f /etc/SuSe-release ]; then
      # Older SuSE/etc.
      ...
  elif [ -f /etc/redhat-release ]; then
      # Older Red Hat, CentOS, etc.
      ...
  else
      # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
      OS=$(uname -s)
      VER=$(uname -r)
  fi

  if [ "$OS" == "Arch Linux" ]; then
    sudo pacman -S fzf 
  elif [ "$OS" == "Ubuntu" ]; then
    sudo apt install fzf 
  else
    echo "Failed to install fzf, please install manually"
  fi 
fi
  
