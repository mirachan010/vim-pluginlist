[Neosnippet](https://github.com/Shougo/neosnippet.vim) integration for
[ncm2](https://github.com/ncm2/ncm2).

![ncm2-neosnippet](https://user-images.githubusercontent.com/4538941/51359194-9332ad80-1b01-11e9-9e87-184b32d73997.gif)

## Features

- snippet completion source
- trigger dynamic snippet of completed item, e.g. parameter expansion.

## Reaurements

- `user_data` found in vim8/nvim's documentation `:help complete-item`

## Install

```vim
Plug 'Shougo/neosnippet.vim'
Plug 'ncm2/ncm2-neosnippet'
```

## Vimrc Example

```vim
" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
inoremap <silent> <expr> <CR> ncm2_neosnippet#expand_or("\<CR>", 'n')
```

Please read neosnippet documentation for more information on how to use
snippet.

## API

If you need more control over the completed item's snippet expansion, you
might need these two APIs to help program your key mapping.

`ncm2_neosnippet#completed_is_snippet()`

Checks whether the `v:completed_item` is also a snippet.

`<Plug>(ncm2_neosnippet_expand_completed)`

Use this key to expand the completed snippet.
