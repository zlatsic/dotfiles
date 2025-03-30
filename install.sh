#!/bin/bash

dotfiles_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo running for dotfiles dir $dotfiles_dir

ln -sn $dotfiles_dir/alacritty $HOME/.config/alacritty

ln -sn $dotfiles_dir/fish $HOME/.config/fish

ln -sn $dotfiles_dir/i3 $HOME/.config/i3

ln -sn $dotfiles_dir/mutt $HOME/.mutt

ln -sn $dotfiles_dir/polybar $HOME/.config/polybar

ln -sn $dotfiles_dir/tmux $HOME/.tmux
ln -sn $dotfiles_dir/tmux/tmux.conf $HOME/.tmux.conf

ln -sn $dotfiles_dir/vim $HOME/.vim
ln -sn $dotfiles_dir/vim $HOME/.config/nvim
# vim-plug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +qa || nvim +'PlugInstall --sync' +qa
 
