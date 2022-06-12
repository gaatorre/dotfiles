#!/bin/bash

# TODO: provide a helpful message of how to use this

echo "Installing necessary packages"
#sudo apt update
#sudo apt install -y cmake git neovim ccls clang-format curl tmux nodejs fonts-powerline

#sudo apt-add-repository ppa:fish-shell/release-3
#sudo apt update
#sudo apt install -y fish

#curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

while read src dst; do
  echo "$src --> $HOME/$dst"
  if [ -d "$src" ]; then
    cp -a $src/. $HOME/$dst
  else
    cp $src $HOME/$dst
  fi
done < $1

exit

git config --global user.email "jhd389@gmail.com"
git config --global user.name "Gabriel Torres"
git config --global core.editor nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim --headless +PlugInstall +qa

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fish -c 'omf install'

