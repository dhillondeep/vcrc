#!/bin/sh
set -e

cd ~/.vim_runtime

if [ -f ~/.config/nvim/init.vim ]; then
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
    echo 'Found ~/.config/nvim/init.vim. Moved the file to ~/.config/nvim/init.vim.bak!'
fi

cat ~/.vim_runtime/vimrcs/basic.vim > ~/.config/nvim/init.vim

echo "Installed the basic vim configuration successfully! Enjoy :-)"
