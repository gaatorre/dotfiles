#!/bin/bash
echo "Installing necessary packages"
sudo apt update
sudo apt install -y cmake git neovim ccls clang-format curl tmux nodejs fonts-powerline

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

git clone https://github.com/gaatorre/dotfiles.git
cp dotfiles/.tmux.conf ~/
cp -r dotfiles/.config/nvim/ ~/.config/nvim
cp -r dotfiles/.config/omf ~/.config/
cp -r dotfiles/.config/fish ~/.config/
git config --global user.email "jhd389@gmail.com"
git config --global user.name "Gabriel Torres"
git config --global core.editor nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim --headless +PlugInstall +qa

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fish -c 'omf install'

