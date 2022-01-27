#!/usr/bin/bash

# export current directory to path
echo "export PATH='$PWD:$PATH'" > ~/.bashrc
echo "dbox() { sh dbox.sh $1 } " > ~/.bashrc

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo "yes\n"

cp ./starship.toml ~/.config/

# vimplug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim  
cp ./init.vim ~/.config/nvim/init.vim

# install python 
sudo dnf install python python-pip -y

# pop shell
sudo dnf install gnome-shell-extension-pop-shell -y
