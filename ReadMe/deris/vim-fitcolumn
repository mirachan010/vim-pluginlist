vim-fitcolumn
===

This is vim plugin for input repeatedly from current column
to above or below column specified 'character'.

Screenshot
---

Following screenshot is that use default key mappings `<C-k>`.  
First you `input above type` to specify above character and
`input insert type` to specify input character.

![screenshot](http://gifzo.net/BLyWGlT2DEY.gif)

Following screenshot is that use custom settings(look at last settings at Settings).  
You `input above type` to specify above character and input `<Space>` that according to settings.

![screenshot](http://gifzo.net/62Ut5axERB.gif)

Settings
---

```vim
" This is default key mapping
imap <C-k>  <Plug>(fitcolumn-abovecolumn)
imap <C-j>  <Plug>(fitcolumn-belowcolumn)
```

```vim
" If you want to change default key mapping, like this.
let g:fitcolumn_no_default_key_mappings = 1
imap <C-h>  <Plug>(fitcolumn-abovecolumn)
imap <C-l>  <Plug>(fitcolumn-belowcolumn)
```

```vim
" If you want to insert <Space> repeatedly from current column to above column specified 'character',
" set following key mappings.
let g:fitcolumn_no_default_key_mappings = 1
inoremap <expr> <C-k>  fitcolumn#fitabovecolumn({
    \ 'insertchar': ' ',
    \ })
inoremap <expr> <C-j>  fitcolumn#fitbelowcolumn({
    \ 'insertchar': ' ',
    \ })
```
