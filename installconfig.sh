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

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install go
wget https://go.dev/dl/go1.17.6.linux-amd64.tar.gz ~/Documents
tar xvzf ~/Documents/go1.17.6.linux-amd64.tar.gz
mv go1.17.6.linux-amd64.tar.gz/ ~/
echo "export PATH='~/home/akame/go/bin:$PATH'" > ~/.bashrc

# install python 
sudo dnf install python python-pip -y

# pop shell
sudo dnf install gnome-shell-extension-pop-shell -y
