# operator-highlighter

## Introduction

Highlight textobj.

![operator_highlighter](https://cloud.githubusercontent.com/assets/214488/15773039/ba013044-29af-11e6-98c1-2c8079bde7f3.gif)

## Installation

[Neobundle](https://github.com/Shougo/neobundle.vim) / [Vundle](https://github.com/gmarik/Vundle.vim) / [vim-plug](https://github.com/junegunn/vim-plug)

```vim
NeoBundle 'osyo-manga/vim-operator-highlighter'
Plugin 'osyo-manga/vim-operator-highlighter'
Plug 'osyo-manga/vim-operator-highlighter'
```

[pathogen](https://github.com/tpope/vim-pathogen)

```
git clone https://github.com/osyo-manga/vim-operator-highlighter ~/.vim/bundle/vim-operator-highlighter
```

## Setting

```vim
" Setting highlight group
let g:operator#highlighter#config = { "group" : "Error" }

" Do highlight
map <Leader>h <Plug>(operator-highlighter)

" Use thinca/vim-operator-sequence
" yank and highlight
let g:operator#highlighter#config = { "clear_time" : 3000 }
noremap <Plug>(yank) y
noremap <expr> y operator#sequence#map("\<Plug>(operator-highlighter-once)", "\<Plug>(yank)")
```
