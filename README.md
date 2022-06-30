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

### Configuration

This configuration contains various tools useful for my workflow, but might not be for everyone. 

#### Plugins

The plugins used in this configuration (stored in `plugins` directory) are as follows:

| Plugin                  | Description                                              |
| :---------------------- | :------------------------------------------------------- |
| **completion.bash**     | fzf completion plugin                                    |
| **key-bindings.bash**   | fzf key binds                                            |
| **git-completion.bash** | git autocompletion functionality                         |
| **git-prompt.sh**       | git status prompt                                        |

To disable a plugin, simply uncomment the corresponding line in the `plugins/init.bash` file. For example to disable fzf:

```sh 
#
# ~/.bash/plugins/init.bash
#

#!/bin/bash

source ~/.bash/plugins/git-completion.bash
source ~/.bash/plugins/git-prompt.sh
# source ~/.bash/plugins/completion.bash
# source ~/.bash/plugins/key-bindings.bash
```
