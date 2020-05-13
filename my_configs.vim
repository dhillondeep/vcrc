" color scheme
syntax on
colorscheme onedark

" mouse scrolling
set mouse=nicr

" Toggles numbers between hybrid and absolute based on the mode
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" mappings for saving and closing vim
map <Leader>x :x<CR>
map <Leader>q :q<CR>
map <Leader>Q :qa<CR>

" remove show mode
set noshowmode

" make splits show up below or right
set splitbelow splitright

" removes pipes | that act as a seperators on splits
set fillchars+=vert:\ 

" dim inactive window (neovim)
if has('nvim')
    if exists('$TMUX')
        hi ActiveWindow ctermbg=None ctermfg=None guibg=#21242b
        hi InactiveWindow ctermbg=darkgray ctermfg=gray guibg=#282c34
        set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
    endif
endif
 
" disable search highlighting
map <silent> <esc> :let @/ = ""<CR>
