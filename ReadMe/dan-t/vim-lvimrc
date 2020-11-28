vim-lvimrc
==========

This is a plugin for the [vim](http://www.vim.org/) editor for sourcing files named `.lvimrc`
from the current directory and all directories upwards during the startup of vim.

All found `.lvimrc` files will be sourced in the order top to bottom, so that files lower
in the directory hierarchy will override the settings of the ones above.

Installation
------------

The recommended way is to use any plugin manager, like [pathogen.vim](<https://github.com/tpope/vim-pathogen/>):

    $> cd ~/.vim/bundle
    $> git clone https://github.com/dan-t/vim-lvimrc

Configuration
-------------

Put at the end of the `~/.vimrc` file:

    call lvimrc#source()
