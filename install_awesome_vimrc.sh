#!/bin/sh
set -e

cd ~/.vim_runtime

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
    echo 'Found ~/.vimrc. Moved the file to ~/.vimrc.bak!'
fi

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/my_configs.vim' > ~/.vimrc

echo "Installed the vim configuration successfully! Enjoy :-)"
