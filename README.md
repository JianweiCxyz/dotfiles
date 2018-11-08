# Overview
This is my various text based configs for vim, bash etc.
# Prerequisites
## Basics
```
sudo apt install gvim curl git cmake aria2 tmux mpv
cp .gitconfig ~/.gitconfig
```
## vim-plug
```
curl -flo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
## pyenv
```
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev
```

## mpv
```
sudo apt install mpv
```
## aria2
```
sudo apt install aria2
mkdir ~/.aria2
ln ~/dotfiles/aria2.conf ~/.aria2/aria2c.conf
```

## YouCompleteMe
```
git clone https://github.com/JianweiCxyz/dotfiles
cd ~/.vim/plugged/YouCompleteMe
python install.py --clang-completer
```
For javascript
```
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm i -g typescript js-beautify
```
# Set up
```
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
```
## Additional Settings for ArchLinux
install gvim
