eval "$(chef shell-init bash)"
#export PS1="\w\$ "
export GIT_EDITOR=nano
source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

MAGENTA="\[\033[0;35m\]"s
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[35m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_GRAY'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
    else echo "'$CYAN'"$(__git_ps1 " (%s)")
    fi)'$BLUE" \t \u \w"$GREEN": "

alias ll='ls -lah'
alias gg='git status -s'

export PATH=$PATH:~/.chefdk/gem/ruby/2.1.0/bin

#export PS1='[\t \u \w$(__git_ps1)]\$ '

export EDITOR=/usr/bin/nano
