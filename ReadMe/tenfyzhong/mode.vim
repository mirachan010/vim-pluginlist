# mode.vim
[![Build Status](https://travis-ci.org/tenfyzhong/mode.vim.svg?branch=master)](https://travis-ci.org/tenfyzhong/mode.vim)
[![GitHub tag](https://img.shields.io/github/tag/tenfyzhong/mode.vim.svg)](https://github.com/tenfyzhong/mode.vim/tags)
![Vim Version](https://img.shields.io/badge/support-Vim%207.4%E2%86%91or%20NVIM-yellowgreen.svg?style=flat)
[![doc](https://img.shields.io/badge/doc-%3Ah%20mode.vim-yellow.svg?style=flat)](https://github.com/tenfyzhong/mode.vim/blob/develop/doc/mode.txt)

mode.vim is a plugin to extend the vim mode. It can add new mode easily. A new
mode is a set of key mappings. It will store the mapping normally before enter
the new mode and restore the mappings after exits the new mode. mode.vim do
this works very easily. 

# Install
I suggest you to use a plugin manager, such vim-plug or other.
- [vim-plug](https://github.com/junegunn/vim-plug) 
```viml
Plug 'tenfyzhong/mode.vim' 
```

- Manual 
```viml
git clone https://github.com/tenfyzhong/mode.vim.git ~/.vim/bundle/mode.vim
echo 'set rtp+=~/.vim/bundle/mode.vim' >> ~/.vimrc
vim -c 'helptag ~/.vim/bundle/mode.vim/doc' -c qa!
```

# Usage
It's very easy to create a new mode. Follow this steps:
1. Create key mappings use `mode#mapping#create`.
2. Add a new mode use `mode#add`.
3. Enable the mode use `mode#enable`.
4. Disable the mode use `mode#disable`.
5. You can delete the mode use `mode#del`.

# Example
This is an example to define a mode named example. 
```viml
let mappings = []
call add(mappings, mode#mapping#create('n', 1, 0, '<leader>h', ':echo hello<br>'))
call add(mappings, mode#mapping#create('n', 1, 0, '<leader>w', ':echo world<br>'))
call mode#add('example', 'E', mappings)
command! ExampleEnable mode#enable('example')
command! ExampleDisable mode#disable('example')
```

# LICENSE 
MIT License Copyright (c) 2019 tenfyzhong
