# The Ultimate vimrc

Over the last 8 years I have used and tweaked Vim. This is my Ultimate vimrc.

There are two versions:

* **Basic**: which is located at [basic.vim](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim). If you want something small just copy this into your ~/.vimrc and you will have a great basic setup
* **Awesome**: this includes a ton of useful plugins, color schemes and configurations etc.

I would of course recommend using the awesome version.


## How to install the Basic version
The basic version is basically just one file and no plugins. You can check out [basic.vim](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim).

This is useful to install on remote servers where you don't need many plugins and you don't do many edits.

	git clone git://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_basic_vimrc.sh
	

## How to install the Awesome version
The awesome version includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following:

	git clone git://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh


## Some screenshots

Colors when editing a Python file:
![Screenshot 1](http://files1.wedoist.com/e952fdb343b1e617b90d256e474d0370/as/screenshot_1.png)

Opening recently opened files [mru.vim](https://github.com/vim-scripts/mru.vim):
![Screenshot 2](http://files1.wedoist.com/1967b0e48af40e513d1a464e08196990/as/screenshot_2.png)

Seeing opened buffers [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip):
![Screenshot 3](http://files1.wedoist.com/88eeb6ff36cf88d062e73c87af482d9c/as/screenshot_3.png )


## What plugins are included?

I recommend reading the docs of each of these plugins to understand them better. Each of them provide a much better Vim experience!

* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manages the runtime path of the plugins (this and git submodules)
* [YankRing](https://github.com/vim-scripts/YankRing.vim): Maintains a history of previous yanks, changes and deletes
* [snipMate.vim](https://github.com/garbas/vim-snipmate): snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Buffer Explorer / Browser. This plugin can be opened with **leader+o**
* [NERD Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim
* [ack.vim](github.com/mileszs/ack.vim): Vim plugin for the Perl module / CLI script 'ack'
* [vim-powerline](https://github.com/Lokaltog/vim-powerline): The ultimate vim statusline utility
* [ctrlp.vim](https://github.com/kien/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. In my config it's mapped to **<Ctrl+F>**, because **<Ctrl-+P>** is used by YankRing
* [mru.vim](https://github.com/vim-scripts/mru.vim): Plugin to manage Most Recently Used (MRU) files. Includes my own fork which adds syntax highlighting to MRU. This plugin can be opened with **leader+f**
* [open_file_under_cursor.vim](https://github.com/amix/open_file_under_cursor.vim): Open file under cursor when pressing **gf**


## What color schemes are included?

* [peaksea](https://github.com/vim-scripts/peaksea): My favorite!
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-irblack](https://github.com/wgibbs/vim-irblack)
* [mayansmoke](https://github.com/vim-scripts/mayansmoke)
* [vim-pyte](https://github.com/therubymug/vim-pyte)


## What modes are included?

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-bundle-mako](https://github.com/sophacles/vim-bundle-mako)


## How to include your own stuff?

After you have installed the setup you can create **~/.vim_runtime/my_configs.vim** to fill in any configurations that are important for for. For instance, my **my_configs.vim** looks like this:

	~/.vim_runtime (master)> cat my_configs.vim
	map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
	map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr> 

You can also install your own plugins, for instance, via pathogen:

	cd ~/.vim_runtime
	git clone git://github.com/tpope/vim-rails.git sources_plugins/vim-rails
	
Now you have vim-rails installed ;-)

### Plugin related mappings

Open bufexplorer and see and manage the current buffers:
    
    map <leader>o :BufExplorer<cr>

Open MRU.vim and see the recently open files:

    map <leader>f :MRU<CR>

Open ctrlp.vim plugin:
    
    let g:ctrlp_map = '<c-f>'

Open peepopen plugin:

    map <leader>j :PeepOpen<cr>

NERDTree:

    map <leader>nn :NERDTreeToggle<cr>
    map <leader>nb :NERDTreeFromBookmark 
    map <leader>nf :NERDTreeFind<cr>

### Normal mode mappings
Fast saving of a buffer:

	nmap <leader>w :w!<cr>

Treat long lines as break lines (useful when moving around in them):

	map j gj
	map k gk
	
Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search):
	
	map <space> /
	map <c-space> ?
	map <silent> <leader><cr> :noh<cr>

Disable highlight when `<leader><cr>` is pressed:
	
	map <silent> <leader><cr> :noh<cr>

Smart way to move between windows:
	
	map <C-j> <C-W>j
	map <C-k> <C-W>k
	map <C-h> <C-W>h
	map <C-l> <C-W>l

Closing of current buffer(s):
	
	" Close current buffer
	map <leader>bd :Bclose<cr>
	
	" Close all buffers
	map <leader>ba :1,1000 bd!<cr>
	
Useful mappings for managing tabs:
	
	map <leader>tn :tabnew<cr>
	map <leader>to :tabonly<cr>
	map <leader>tc :tabclose<cr>
	map <leader>tm :tabmove 
	
	" Opens a new tab with the current buffer's path
	" Super useful when editing files in the same directory
	map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
	
Switch CWD to the directory of the open buffer:
	
	map <leader>cd :cd %:p:h<cr>:pwd<cr>
	
Open vimgrep and put the cursor in the right position:
	
	map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

Vimgreps in the current file:
	
	map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

Remove the Windows ^M - when the encodings gets messed up:
	
	noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
	
Quickly open a buffer for scripbble:
	
	map <leader>q :e ~/buffer<cr>

Toggle paste mode on and off:
	
	map <leader>pp :setlocal paste!<cr>


### Insert mode mappings

Quickly insert parenthesis/brackets/etc.:

    inoremap $1 ()<esc>i
    inoremap $2 []<esc>i
    inoremap $3 {}<esc>i
    inoremap $4 {<esc>o}<esc>O
    inoremap $q ''<esc>i
    inoremap $e ""<esc>i
    inoremap $t <><esc>i

Insert the current date and time (useful for timestamps):

    iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


### Visual mode mappings

Visual mode pressing * or # searches for the current selection:

	vnoremap <silent> * :call VisualSelection('f')<CR>
	vnoremap <silent> # :call VisualSelection('b')<CR>

When you press gv you vimgrep after the selected text:

	vnoremap <silent> gv :call VisualSelection('gv')<CR>

When you press `<leader>r` you can search and replace the selected text:

	vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

Surround the visual selection in parenthesis/brackets/etc.:

    vnoremap $1 <esc>`>a)<esc>`<i(<esc>
    vnoremap $2 <esc>`>a]<esc>`<i[<esc>
    vnoremap $3 <esc>`>a}<esc>`<i{<esc>
    vnoremap $$ <esc>`>a"<esc>`<i"<esc>
    vnoremap $q <esc>`>a'<esc>`<i'<esc>
    vnoremap $e <esc>`>a"<esc>`<i"<esc>
	

### Command line mappings

$q is super useful when browsing on the command line. It deletes everything until the last slash.

    cno $q <C-\>eDeleteTillSlash()<cr>

Bash like keys for the command line

    cnoremap <C-A>		<Home>
    cnoremap <C-E>		<End>
    cnoremap <C-K>		<C-U>

    cnoremap <C-P> <Up>
    cnoremap <C-N> <Down>


### Spell checking
Pressing `<leader>ss` will toggle and untoggle spell checking

    map <leader>ss :setlocal spell!<cr>

Shortcuts using <leader> instead of special chars

    map <leader>sn ]s
    map <leader>sp [s
    map <leader>sa zg
    map <leader>s? z=

### Cope	
Do :help cope if you are unsure what cope is. It's super useful!

When you search with vimgrep, display your results in cope by doing:
* `<leader>cc`

To go to the next search result do:
* `<leader>n`

To go to the previous search results do:
* `<leader>p`

    map <leader>cc :botright cope<cr>
    map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
    map <leader>n :cn<cr>
    map <leader>p :cp<cr>


## Useful blog tips regarding my Vim setup

* [Vim: Annotate strings with gettext (the macro way)](http://amix.dk/blog/post/19678#Vim-Annotate-strings-with-gettext-the-macro-way)
* [vimgrep: Searching through multiple file extensions](http://amix.dk/blog/post/19672#vimgrep-Searching-through-multiple-file-extensions)
* [Filtering through vimgrep results using regular expressions](http://amix.dk/blog/post/19666#Filtering-through-vimgrep-results-using-regular-expressions)
* [PeepOpen - File auto completion for Mac editors](http://amix.dk/blog/post/19601#PeepOpen-File-auto-completion-for-Mac-editors)
* [Vim 7.3: Persistent undo and encryption!](http://amix.dk/blog/post/19548#Vim-7-3-Persistent-undo-and-encryption)
* [Vim tips: Visual Search](http://amix.dk/blog/post/19334#Vim-tips-Visual-Search)
* [Folding in Vim](http://amix.dk/blog/post/19132#Folding-in-Vim)
