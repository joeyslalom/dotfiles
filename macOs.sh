#!/usr/bin/env bash

THIS=~/git/dotfiles

# Fixes Alt-Left / Alt-Right behavior in Terminal for some reason
#ln -sf $THIS/.inputrc ~/.inputrc

ln -sf $THIS/.bash_profile ~/.bash_profile
ln -sf $THIS/.vimrc ~/.vimrc
