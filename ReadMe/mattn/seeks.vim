# seeks.vim

Make a seeks search inside vim

![Screenshot](https://github.com/downloads/sanpii/seeks.vim/seeks-vim.png)

## Requirements

* https://github.com/mattn/webapi-vim

## Installation

I recommend installation with [pathogen.vim](https://github.com/tpope/vim-pathogen).

    $ cd ~/.vim/bundle
    $ git clone https://github.com/sanpii/seeks.vim.git

## Usage

    nnoremap <silent> <C-K> :call seeks#Find('<cword>')<CR>

### Commands

    :Seeks [query]

## Configuration

    let g:seeks_node = 'http://seeks.fr'
    let g:seeks_max_results = 5
    let g:seeks_append_results = 0
