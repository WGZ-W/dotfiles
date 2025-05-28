#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Preventing nested ranger instances
ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}


# Some alias
alias ll='ls -al --color=auto'
alias ra='ranger'
alias lg='lazygit'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt
# parse_git_branch() {
#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* $.*$/ (\1)/'
# }

# PS1='[\u@\h \W]\$ '
# PS1='$$\033[32m$$\u@\h$$\033[00m$$:$$\033[34m$$\w$$\033[31m$$$(parse_git_branch)$$\033[00m$$\$ '
PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"

# Environments
export EDITOR=nvim

# jekyll path
# export GEM_HOME="$HOME/.local/share/gem/ruby/3.2.0"
# export PATH="$GEM_HOME/bin:$PATH"

# vscode path
# export PATH="$PATH:$HOME/Downloads/VSCode-linux-x64"
