#!/bin/bash

git submodule init
git submodule update


# vim
echo "setting up vimrc"
cp -iv vim-conf/vimrc.conf ~/.vimrc
echo "setting up solarized vim color"
mkdir -p ~/.vim/colors
cp -v vim-conf/solarized.vim ~/.vim/colors

# git
echo "settting up git config"
cp -iv git-conf/gitconfig ~/.gitconfig

# tmux
echo "setting up tmux config"
cp -iv tmux-conf/tmux.conf ~/.tmux.conf

# emcas
echo "setting up emacs config"
cp -iv emacs-conf/emacs-26-linux.conf ~/.emacs
echo "setting up solarized emacs color"
mkdir -p ~/.emacs.d/solarized
cp -iv emacs-conf/color-theme-solarized.el ~/.emacs.d/solarized/

echo "all done. Enjoy ;-)"
