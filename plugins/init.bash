#!/bin/bash 

export GIT_PS1_SHOWDIRTYSTATE=1 
export GIT_PS1_SHOWSTASHSTATE=1 
export GIT_PS1_SHOWUNTRACKEDFILES=1 

source ~/.bash/plugins/git-completion.bash 
source ~/.bash/plugins/git-prompt.sh 

export FZF_DEFAULT_OPTS='
    --color=fg:#D8DEE9,hl:#81a1c1
    --color=fg+:#D8DEE9,bg+:#3B4252,hl+:#81a1c1
    --color=info:#88C0D0,prompt:#8FBCBB,pointer:#23a9d5
    --color=marker:#a3be8b,spinner:#23a9d5,header:#a3be8b'

source ~/.bash/plugins/completion.bash 
source ~/.bash/plugins/key-bindings.bash
