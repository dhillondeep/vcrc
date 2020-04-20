# Vimrc

This is built upon https://github.com/amix/vimrc so, if you want to use that instead, please go to that link!
This fork customizes original configurations to my needs:

There are two versions:

* **The Basic**: If you want something small just copy [basic.vim](https://github.com/dhillondeep/vimrc/blob/master/vimrcs/basic.vim) into your ~/.vimrc and you will have a good basic setup
* **The Awesome**: Includes a ton of useful plugins, color schemes, and configurations

I would, of course, recommend using the awesome version.


## How to install the Awesome version?
### Install for your own user only
The awesome version includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following from your terminal:

	git clone --depth=1 https://github.com/dhillondeep/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh
	
### Install for multiple users
To install for multiple users, the repository needs to be cloned to a location accessible for all the intended users.

	git clone --depth=1 https://github.com/dhillondeep/vimrc.git /opt/vim_runtime
	sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime user0 user1 user2
	# to install for all users with home directories
	sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime --all
	
Naturally, `/opt/vim_runtime` can be any directory, as long as all the users specified have read access.

## Fonts

I recommend using [IBM Plex Mono font](https://github.com/IBM/plex) (it's an open-source and awesome font that can make your code beautiful). The Awesome vimrc is already setup to try to use it.

Some other fonts that Awesome will try to use:

* [Hack](http://sourcefoundry.org/hack/)
* [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/)

## How to install the Basic version?

The basic version is just one file and no plugins. Just copy [basic.vim](https://github.com/dhillondeep/vimrc/blob/master/vimrcs/basic.vim) and paste it into your vimrc.

The basic version is useful to install on remote servers where you don't need many plugins, and you don't do many edits.

	git clone --depth=1 https://github.com/dhillondeep/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_basic_vimrc.sh


## How to install on Windows?

Use [gitforwindows](http://gitforwindows.org/) to checkout the repository and run the installation instructions above. No special instructions needed ;-)


## How to install on Linux

If you have vim aliased as `vi` instead of `vim`, make sure to either alias it: `alias vi=vim`. Otherwise, `apt-get install vim`


## How to update to latest version?

Just do a git rebase!

    cd ~/.vim_runtime
    git pull --rebase
    python update_plugins.py


## Some screenshots

Colors when editing a Python file:

![Screenshot 1](https://dnp4pehkvoo6n.cloudfront.net/07583008e4da885801657e8781777844/as/Python%20editing.png)

Opening recently opened files with the [mru.vim](https://github.com/vim-scripts/mru.vim) plugin:

![Screenshot 2](https://dnp4pehkvoo6n.cloudfront.net/1d49a88f9bd5d013c025bb1e1272a7d8/as/MRU%20plugin.png)

[NERD Tree](https://github.com/scrooloose/nerdtree) plugin in a terminal window:
![Screenshot 3](https://dnp4pehkvoo6n.cloudfront.net/ae719203166585d64728f28398f4b1b7/as/Terminal%20usage.png)


## How to include your own stuff?

After you have installed the setup, you can create **~/.vim_runtime/my_configs.vim** to fill in any configurations that are important for you. For instance, my **my_configs.vim** looks like this:

	~/.vim_runtime (master)> cat my_configs.vim
	map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
	map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr> 

You can also create **~/.vim_runtime/my_plugins.vim** to add any plugins using [Vim Plug](https://github.com/junegunn/vim-plug). For instance, my **my_plugins.vim** looks like this:

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'christoomey/vim-tmux-navigator'
	
    	# after resourcing the file, you can install the plugin by running
    	:PlugInstall

   	 # you can also use key binding
    	map <leader>pi :PlugInstall<cr>

## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) is `,`, so whenever you see `<leader>` it means `,`.


## How to uninstall
Just do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`
