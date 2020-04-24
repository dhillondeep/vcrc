#!/bin/sh
set -e

cd ~/.vim_runtime

if [ -f ~/.config/nvim/init.vim ]; then
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
    echo 'Found ~/.config/nvim/init.vim. Moved the file to ~/.config/nvim/init.vim.bak!'
fi

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/my_configs.vim' > ~/.config/nvim/init.vim

echo "Installed nvim configuration successfully! Enjoy :-)"
