#!/bin/sh
set -e

cd ~/.vim_runtime

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
    echo 'Found ~/.vimrc. Moved the file to ~/.vimrc.bak!'
fi

cat ~/.vim_runtime/vimrcs/basic.vim > ~/.vimrc

echo "Installed the basic nvim configuration successfully! Enjoy :-)"
