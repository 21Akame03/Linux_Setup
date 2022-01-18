#!/usr/bin/bash

# export current directory to path
echo "export PATH='$PWD:$PATH'"
echo "dbox() { sh dbox.sh $1 } " > ~/.bashrc

# install starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo "yes\n"

cp ./starship.toml ~/.config/

# vimplug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim  
cp ./init.vim ~/.config/nvim/init.vim


# pop shell
sudo dnf install gnome-shell-extension-pop-shell
