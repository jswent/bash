# bash

My modern, minimal bash config with sensible extensions such as prompt git status, fzf autocomplete, and more. 

### Installation

To easily install this config you can run the install script through the following command. You can also install manually from the directions below. 

```sh 
bash -c "$(curl -fsSL https://raw.githubusercontent.com/jswent/bash/main/install.bash)"
```

#### Manual inspection

It's good practice to inspect any script you download from any source you don't know, you can do that by downloading the installation script as a file 
and opening in your preferred text editor. 

```sh 
wget https://raw.githubusercontent.com/jswent/bash/main/install.bash 
nvim install.bash 
chmod +x install.bash 
./install.bash
```

### Manual installation 

To manually setup this config, you can clone the repository yourself and link the required file. These commands (should) achieve that for you:

```sh 
git clone https://github.com/jswent/bash ~/.bash
# To backup your old .bashrc file
mv ~/.bashrc ~/.bashrc.old 
ln -s ~/.bash/.bashrc ~/.bashrc
bash
```
