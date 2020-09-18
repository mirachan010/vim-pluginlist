## pypi.vim

Simple plugin for checking the latest version of the Python package in Vim.

![Screenshot](snapshot.gif)

## Requirements

- [webapi-vim][]

## Usage

    :Pypi <package_name>  // Check for the latest version of the package
    :Pypi <package_name> <package_name> <package_name>  // Check for the latest version of multiple packages
    :'<,'>Pypi  // Update selected packages with the latest version

## Install

*  [Pathogen](https://github.com/tpope/vim-pathogen)
    * `git clone https://github.com/7kfpun/pypi.vim.git ~/.vim/bundle/pypi.vim`
    * `git clone https://github.com/mattn/webapi-vim.git ~/.vim/bundle/webapi-vim`
*  [vim-plug](https://github.com/junegunn/vim-plug)
    * `Plug 'mattn/webapi-vim'`
    * `Plug '7kfpun/pypi.vim'`
*  [NeoBundle](https://github.com/Shougo/neobundle.vim)
    * `NeoBundle 'mattn/webapi-vim'`
    * `NeoBundle '7kfpun/pypi.vim'`
*  [Vundle](https://github.com/gmarik/vundle)
    * `Plugin 'mattn/webapi-vim'`
    * `Plugin '7kfpun/pypi.vim'`

## Settings

    // Default settings
    let g:pypi_print_results = 1
    let g:pypi_replace_latest_version = 1
    let g:pypi_replace_type = '=='  // or '>=' or '<'
    let g:pypi_replace_with_comment = 0

[webapi-vim]: https://github.com/mattn/webapi-vim
