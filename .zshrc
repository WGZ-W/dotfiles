
# Enable auto-completion
autoload -U compinit && compinit

# alias
alias ls='ls -al --color=auto'
alias ra='ranger'
# alias gs='git status'
# alias vim='nvim'



# >>> ranger config
# Preventing nested ranger instances
ranger() {
     if [ -z "$RANGER_LEVEL" ]; then
         /opt/homebrew/bin/ranger "$@"
     else
         exit
    fi
}

export EDITOR=nvim
# <<< ranger config



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

