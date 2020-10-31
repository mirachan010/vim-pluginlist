# mapping.vim

[![Build Status](https://travis-ci.org/ryym/mapping.vim.svg?branch=ci)](https://travis-ci.org/ryym/mapping.vim)

Using this plugin, the codes of key mappings in Vim script become
a little more simple and readable.

## Example

By normal commands:
```vim
nnoremap <Space>w :<C-u>write<CR>
nnoremap <Space>q :<C-u>quit<CR>
nnoremap <Space>Q :<C-u>quit!<CR>
nnoremap <Leader>h :<C-u>help<Space>

nnoremap c "_c
vnoremap c "_c

nmap ]n <Plug>unimpairedContextNext
omap ]n <Plug>unimpairedContextNext
nmap [n <Plug>unimpairedContextPrevious
omap [n <Plug>unimpairedContextPrevious

imap <buffer><expr> <C-s> unite#do_action('split')
```

By custom cmmands:
```vim
Map n <Space>w  ::write
Map n <Space>q  ::quit
Map n <Space>Q  ::quit!
Map n <Leader>h :us:help

Map nv c "_c

Remap no ]n <Plug>unimpairedContextNext
Remap no [n <Plug>unimpairedContextPrevious

Remap i (buffer expr) <C-s> unite#do_action('split')
```

## Features
* Some repetitive patterns of `rhs` can be omitted.
* The mappings for several modes can be defined in any combination of modes.
* The `map-arguments`(`<buffer>`, `<silent>`, ..) become distinguishable from `lhs`.
