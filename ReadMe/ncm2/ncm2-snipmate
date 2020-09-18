[snipMate](https://github.com/msanders/snipmate.vim) integration for
[ncm2](https://github.com/ncm2/ncm2).

![rec](https://user-images.githubusercontent.com/4538941/42503787-31ce9de6-846c-11e8-8d68-afc4a19fb223.gif)

## Features

- snippet completion source
- trigger dynamic snippet of completed item, e.g. parameter expansion.

## Reaurements

- `user_data` found in vim8/nvim's documentation `:help complete-item`

## Install

```vim
" based on snipmate
Plug 'ncm2/ncm2-snipmate'

" snipmate dependencies
Plug 'tomtom/tlib_vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
```

## Vimrc Example

```vim
" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
inoremap <silent> <expr> <CR> ncm2_snipmate#expand_or("\<CR>", 'n')

" wrap <Plug>snipMateTrigger so that it works for both completin and normal
" snippet
" inoremap <expr> <c-u> ncm2_snipmate#expand_or("\<Plug>snipMateTrigger", "m")

" c-j c-k for moving in snippet
let g:snips_no_mappings = 1
vmap <c-j> <Plug>snipMateNextOrTrigger
vmap <c-k> <Plug>snipMateBack
imap <expr> <c-k> pumvisible() ? "\<c-y>\<Plug>snipMateBack" : "\<Plug>snipMateBack"
imap <expr> <c-j> pumvisible() ? "\<c-y>\<Plug>snipMateNextOrTrigger" : "\<Plug>snipMateNextOrTrigger"
```

`:help snipMate` for more information on using snipMate.

## API

If you need more control over the completed item's snippet expansion, you
might need these two APIs to help program your key mapping.

`ncm2_snipmate#completed_is_snippet()`

Checks whether the `v:completed_item` is also a snippet.

`<Plug>(ncm2_snipmate_expand_completed)`

Use this key to expand the completed snippet.
