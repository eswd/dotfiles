#!/bin/bash

# global

cd ~
mv dotfiles .dotfiles

# symlinks
ln -sv .dotfiles/.vim .vim
ln -sv .dotfiles/.vimrc .vimrc
ln -sv .dotfiles/.oh-my-zsh .oh-my-zsh
ln -sv .dotfiles/.zshrc .zshrc
ln -sv .dotfiles/terminator/config .config/terminator
