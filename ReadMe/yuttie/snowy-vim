# Snowy theme

This repository includes an **experimental** color scheme file for Vim.

![Screenshot](https://raw.githubusercontent.com/yuttie/snowy-vim/gh-pages/screenshot-rust-01.png)


## Features

* A light theme
* Includes colorscheme file for [lightline.vim](https://github.com/itchyny/lightline.vim)
* Customization via colorscheme [generator script](src/snowy.py) written in Python


## Installation

### For vim-plug users
```viml
Plug 'yuttie/snowy-vim'
```


## Configuration

### lightline.vim
[lightline.vim](https://github.com/itchyny/lightline.vim) support is included.
To use the bundled colorscheme for lightline.vim, specify `'snowy'` in a definition of your lightline as follows:
```viml
let g:lightline = {
      \ 'colorscheme': 'snowy',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator':    { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ }
```


## TODO
* [ ] Export the palette through `g:snowy_palette['red']`


## Contribution
Currently, the colors for terminals, i.e. `cterm*` values, are not tested well.
Please create an issue when you find a problem.
