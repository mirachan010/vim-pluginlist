# typecast.vim
[![Build Status](https://travis-ci.org/tenfyzhong/typecast.vim.svg?branch=master)](https://travis-ci.org/tenfyzhong/typecast.vim)
[![GitHub tag](https://img.shields.io/github/tag/tenfyzhong/typecast.vim.svg)](https://github.com/tenfyzhong/typecast.vim/tags)
[![doc](https://img.shields.io/badge/doc-%3Ah%20typecast-yellow.svg?style=flat)](https://github.com/tenfyzhong/typecast.vim/blob/master/doc/typecast.txt)

Typecast is a plugin to add type cast surrouding. 

support [repeat.vim](https://github.com/tpope/vim-repeat/). 

# Screenshots
![screenshot](https://github.com/tenfyzhong/typecast.vim/blob/develop/.resource/typecast1.gif)

# Install
I suggest you to use a plugin manager, such vim-plug or other.
- [vim-plug](https://github.com/junegunn/vim-plug) 
```viml
Plug 'tenfyzhong/typecast.vim' 
```

- Manual 
```sh
git clone https://github.com/tenfyzhong/typecast.vim.git ~/.vim/bundle/typecast.vim
echo 'set rtp+=~/.vim/bundle/typecast.vim' >> ~/.vimrc
vim -c 'helptag ~/.vim/bundle/typecast.vim/doc' -c qa!
```

# Usage
### normal mode
Type `<leader>ct`(default mapping) and a motion, and then it will prompt to
input a type. It will add `type(**)` to surround the motion selected words.
`**` is the motion selected words. 

### visual mode
Select the words to cast, and then type `<leader>ct`(default mapping).


# Mapping
`<Plug>typecast`
Trigger the type casting. Support normal and visual mode. In the normal mode, 
it will wait a motion to surround with `()`. In the visual mode, it will 
surround the selected words. 

default mapping: 
```viml
nmap <leader>ct <Plug>typecast
xmap <leader>ct <Plug>typecast
```

