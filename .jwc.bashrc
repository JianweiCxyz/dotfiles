export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
if [ -f ~/.dir_colors ]; then
    eval `dircolors ~/.dir_colors`
fi
alias ssh="ssh -XC"
alias ll="ls -lh"
