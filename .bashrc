#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'

# Source snippets 
source ~/.bash/snippets/init.bash

# Source plugins 
source ~/.bash/plugins/init.bash

# Activate terminal color theme 
/home/jswent/scripts/termtheme solarized_custom.yml

# eval "$(starship init bash)"

# Commented out if using starship prompt 
export PS1='\[\033[1;34m\][\[\033[1;93m\]\u\[\033[1;36m\]@\[\033[1;93m\]\h\[\033[1;34m\]] \[\033[1;90m\]\w\[\033[1;34m\]$(__git_ps1 " (%s)") ❯ \[\033[0m\]'

# Include aliases file 
. ~/.bash/.bash_aliases

. "$HOME/.cargo/env"

# Run neofetch
neofetch
