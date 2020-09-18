**WARNING: This plugin is deprecated. Please use the followings instead.**

* **[vim-volt/volt](https://github.com/vim-volt/volt): Vim plugin manager written in Go**
* **[vim-volt/vim-volt](https://github.com/vim-volt/vim-volt): Its vim plugin interface**

[![Build Status](https://travis-ci.org/tyru/vivo.vim.svg?branch=master)](https://travis-ci.org/tyru/vivo.vim)

-----

# What's this?

An yet yet yet another vim plugin manager.<br/>
This plugin is designed for the following policies.

1. Version locking is **MUST**.
  * Managed plugins are listed in `~/.vim/Vivo.lock`.
  * For completely restoring your current environment at another PC,
    you can manage the file by version control systems(aka Git, Mercurial, ...).
    And just typing `:VivoFetchAll /path/to/Vivo.lock` or `:call vivo#fetch_all('/path/to/Vivo.lock')`, everything is done like `bundle install`.
2. Of cource, Multi-platform is also **MUST**.
  * It works with: Windows, Linux
  * Maybe it works, but please tell me if it works: Mac OS X
3. Install/Uninstall a plugin from command-line. Here are the examples.
  (See `Features` for details)
  * `:VivoInstall tyru/open-browser.vim`
  * `:VivoInstall https://github.com/tyru/open-browser.vim`
  * `:VivoPurge open-browser.vim`
  * `:VivoRemove open-browser.vim`
4. I don't want to write plugins' names in .vimrc by hand!
  * Okay, leave all stuffs about plugin management to vivo.
    You don't need to concern about them.
  * It shouldn't be there(.vimrc)!!!
5. I don't want to write plugins' configurations in .vimrc, too!
  * It is **painful** to remove the configurations by hand after you uninstall a plugin...
  * By default, a configuration file per a plugin is `~/.vim/plugconf/<plugin name>.vim`.
  * It also shouldn't be there! isn't it?
6. Thin wrapper plugin for external command (TODO)
  * If a vim plugin gets bigger, the code should be split into external command.
  * Because calling external command doesn't have severe impact on your vim memory usage.
  * It also keeps your vim rapid because it can avoid the problems like memory leak, memory thrashing.
  * Of cource, if the code is real-time processing, it should not be split.
7. Stable, and Well-tested (TODO)
  * Plugin manager should be tested deeply and stable.
8. Keep It Simple, Stupid
  * Vivo doesn't slow down your vim startup, and not support any features not in this policies.


# How it works

```
:VivoList
No plugins are installed.

:VivoInstall tyru/caw.vim
vivo: Fetching a plugin from 'https://github.com/tyru/caw.vim'... Done.
vivo: Installed a plugin 'caw.vim'.

:VivoInstall tyru/open-browser.vim
vivo: Fetching a plugin from 'https://github.com/tyru/open-browser.vim'... Done.
vivo: Installed a plugin 'open-browser.vim'.

:VivoList
caw.vim
  Directory: /home/tyru/.vim/bundle/caw.vim
  Type: git
  URL: https://github.com/tyru/caw.vim
  Version: 6591ed28caef2d3175298818c5f38ce9ec692416
open-browser.vim
  Directory: /home/tyru/.vim/bundle/open-browser.vim
  Type: git
  URL: https://github.com/tyru/open-browser.vim
  Version: 61169d9c614cfead929be33b279e4e644d2c7c55

Listed managed plugins.

:VivoRemove open-browser.vim
vivo: Uninstalling the plugin 'open-browser.vim'... Done.

:VivoList
caw.vim
  Directory: /home/tyru/.vim/bundle/caw.vim
  Type: git
  URL: https://github.com/tyru/caw.vim
  Version: 6591ed28caef2d3175298818c5f38ce9ec692416
open-browser.vim (not fetched)
  Directory: /home/tyru/.vim/bundle/open-browser.vim
  Type: git
  URL: https://github.com/tyru/open-browser.vim
  Version: 61169d9c614cfead929be33b279e4e644d2c7c55

Listed managed plugins.

:VivoPurge caw.vim
vivo: Unrecording the plugin info of 'caw.vim'... Done.
vivo: Uninstalling the plugin 'caw.vim'... Done.

:VivoList
open-browser.vim (not fetched)
  Directory: /home/tyru/.vim/bundle/open-browser.vim
  Type: git
  URL: https://github.com/tyru/open-browser.vim
  Version: 61169d9c614cfead929be33b279e4e644d2c7c55

Listed managed plugins.

:VivoFetchAll
vivo: Fetching a plugin from 'https://github.com/tyru/open-browser.vim'... Done.
vivo: Installed a plugin 'open-browser.vim'.
vivo: VivoFetchAll: All plugins are installed!

:VivoList
open-browser.vim
  Directory: /home/tyru/.vim/bundle/open-browser.vim
  Type: git
  URL: https://github.com/tyru/open-browser.vim
  Version: 61169d9c614cfead929be33b279e4e644d2c7c55

Listed managed plugins.
```

# Features

## `:VivoInstall`

* From GitHub repository: `:VivoInstall tyru/open-browser.vim`
* From Git repository URL(http,https,git): `:VivoInstall https://github.com/tyru/open-browser.vim`

## `:VivoPurge`

* `:VivoPurge open-browser.vim` removes both a plugin directory and a plugin info.

## `:VivoRemove`

* `:VivoRemove open-browser.vim` removes only a plugin directory.
* After this command is executed, `:VivoFetchAll` can fetch a plugin directory again.

## `:VivoList`

* Lists managed plugins including which have been not fetched (See `How it works`).

## `:VivoFetchAll`

* Install all plugins recorded in `~/.vim/Vivo.lock`.
* Also locks the versions to recorded commit.
  (for example, in git repository, it executes `git checkout {hash}`)


# Installation

You must install this plugin by hand at first :)

## You have 'git' command

1. `git clone https://github.com/tyru/vivo.vim ~/.vim/bundle/vivo.vim`
2. Add `~/.vim/bundle/vivo.vim` to runtimepath (See `Configuration`).

## You don't have 'git' command

1. Download ZIP archive from `https://github.com/tyru/vivo.vim/archive/master.zip`.
2. Create `~/.vim/bundle/vivo.vim/` directory.
3. Extract archive into `~/.vim/bundle/vivo.vim/`.

Here is the directory structure after step 3.

```
$ tree ~/.vim/bundle/vivo.vim/
/home/tyru/.vim/bundle/vivo.vim/
├── README.md
├── autoload
│   └── vivo.vim
├── doc
└── plugin
    └── vivo.vim
```


# Configuration

```viml
if has('vim_starting')
  set rtp+=~/.vim/bundle/vivo.vim
  " If you want to fetch vivo.vim automatically...
  " if !isdirectory(expand('~/.vim/bundle/vivo.vim'))
  "   call system('mkdir -p ~/.vim/bundle/')
  "   call system('git clone https://github.com/tyru/vivo.vim.git ~/.vim/bundle/vivo.vim')
  " end
endif

" Fetch managed plugins from remote.
call vivo#fetch_all()

" Add managed plugins to 'runtimepath'.
" (It won't add disabled plugins)
filetype off
call vivo#rtp_append_plugins()
filetype plugin indent on

" Load all plugin configs from '~/.vim/vivo/plugconf/*.vim'
" (if you prefer writing configs in separated files from vimrc).
call vivo#plugconf#load()

" Generate helptags for plugins in 'runtimepath'.
call vivo#helptags()
```


# Supported protocols

* Git

