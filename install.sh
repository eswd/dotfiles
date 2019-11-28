#!/bin/bash

# global

cd ~
mv dotfiles .dotfiles

# vim
ln -sv .dotfiles/.vim .vim
ln -sv .dotfiles/.vimrc .vimrc
#ln -sv .dotfiles/.gitconfig .gitconfig
ln -sv .dotfiles/.oh-my-zsh .oh-my-zsh
ln -sv .dotfiles/.zshrc .zshrc
# TODO
# Link for i3 config
