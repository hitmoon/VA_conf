#!/bin/bash

git submodule init
git submodule update


# vim
echo "setting up vimrc"
cp -iv vim-conf/vimrc.conf ~/.vimrc
echo "setting up solarized vim color"
mkdir -p ~/.vim/colors
cp -v vim-conf/solarized.vim ~/.vim/colors
cp -v vim-conf/solarized8*.vim ~/.vim/colors

# git
echo "settting up git config"
cp -iv git-conf/gitconfig ~/.gitconfig

# tmux
echo "setting up tmux config"
cp -iv tmux-conf/tmux.conf ~/.tmux.conf

# emcas
echo "setting up emacs config"
mkdir -p ~/.emacs.d
cp -r emacs-conf/emacs.d/* ~/.emacs.d/
cp -r emacs-conf/terminfo ~/.terminfo

echo "Please Note:"
echo "for emacs to work properly, Please make sure following packages is installed:"
echo "clang libclang global ctags and clang symlink is setup correctly!"
echo
echo "all done. Enjoy ;-)"
