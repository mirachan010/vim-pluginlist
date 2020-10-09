# operator-swap

## Introduction

Swap textobj area.

![swap](https://cloud.githubusercontent.com/assets/214488/15874646/1630faf6-2d3f-11e6-8415-140c0566a79d.gif)


## Installation

[Neobundle](https://github.com/Shougo/neobundle.vim) / [Vundle](https://github.com/gmarik/Vundle.vim) / [vim-plug](https://github.com/junegunn/vim-plug)

```vim
NeoBundle 'osyo-manga/vim-operator-swap'
Plugin 'osyo-manga/vim-operator-swap'
Plug 'osyo-manga/vim-operator-swap'
```

[pathogen](https://github.com/tpope/vim-pathogen)

```
git clone https://github.com/osyo-manga/vim-operator-swap ~/.vim/bundle/vim-operator-swap
```

## Setting

```vim
" Mark textobj area
nmap <C-m> <Plug>(operator-swap-marking)
" Swap marking area
nmap <C-p> <Plug>(operator-swap)

" highlighting mark
" Use operator-highlighter : https://github.com/osyo-manga/vim
" and operator-sequence    : https://github.com/thinca/vim-operator-sequence
noremap <expr> <C-m> operator#sequence#map("\<Plug>(operator-swap-marking)", "\<Plug>(operator-highlighter)")
noremap <expr> <C-p> operator#sequence#map("\<Plug>(operator-swap)", "\<Plug>(operator-highlighter-clear)")
```

![swap2](https://cloud.githubusercontent.com/assets/214488/15874649/204ab8ec-2d3f-11e6-9f52-8a20d6c5b6be.gif)

