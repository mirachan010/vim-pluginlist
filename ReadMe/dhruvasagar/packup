# PackUp

A small wrapper around git for automating process of installing / updating
plugins

## Overview

VIM already has support for `packages`, so all that's left for us to automate
is adding / removing / updating them leveraging `git`.

That's what this plugin does, as a bonus it provides an ability to do so
asynchronously leveraging vim's `jobs`.

> NOTE: This only supports `VIM`, support for `NeoVIM` is being added.

This also provides a few basic needed features :

* Lazy loading plugins
* Freeze plugins
* Install plugins from a specific branch / ref
* Post installation hook

## Requirements

* Vim 8+ (preferably latest)
* Git 1.9+
* OS: Linux / OSX (Probably works on Windows but hasn't been tested)

## Installation

```sh
$ git clone git@github.com:dhruvasagar/packup.git ~/.vim/pack/packup/opt/packup
```

## Usage

You can add the following to your vimrc :

```vim
packadd packup

" Initialize packup
call packup#init()

" Let packup manage itself
call packup#add('git@github.com:dhruvasagar/packup.git', {'type': 'opt'})

" Add rest of your plugins
call packup#add('/usr/local/my_vim_plugin')
call packup#add('git@github.com:dhruvasagar/vim-zoom.git')
call packup#add('git@github.com:dhruvasagar/vim-procession.git', {'type': 'opt'})
call packup#add('git@github.com:pangloss/vim-javascript.git', {'for': 'javascript'})

" Remove any plugins not used anymore
call packup#autoremove()
```

## License

VIM License
