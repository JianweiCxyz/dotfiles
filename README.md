# Overview
This is my various text based configs for vim, bash etc.
# Prerequisites
## Basics
```
sudo apt install vim curl git cmake aria2 tmux
git config --global user.email "jianweichen@utexas.edu"
git config --global user.name "JianweiChen"

```
## pyenv
```
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev
```
## YouCompleteMe
```
git clone https://github.com/JianweiCxyz/dotfiles
```
# Set up
```
ln -s ~/dotfiles/.vimrc .vimrc
ln -s ~/dotfiles/.tmux.conf .tmux.conf
```
