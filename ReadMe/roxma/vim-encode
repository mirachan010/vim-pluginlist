# Vim-encode

## Description

Vim-encode provides simple stirng encode/escape functionality inside vim. It
helps make your life easier when you need to copy some text as string into your
code.

supported encode/escape type:

- html
- xml
- url
- hex
- cstring
- cstring_pretty

## Usage

press `<Leader>e` the way you use vim's standard operators like `d`(delete)

Screencast here:

[![asciicast](https://asciinema.org/a/ew105rtskuxg65a1f442stegg.png)](https://asciinema.org/a/ew105rtskuxg65a1f442stegg)


## Key Mapping

If you don't want default mapping, add `let g:vim_encode_default_mapping=0`
into your vimrc. Use `<Plug>(encode)` for your own mapping.

If you want shorter keys for more specific encoding, html encode for example:

```vim
nnoremap <expr> <your_keys> encode#begin('html')
vnoremap <expr> <your_keys> encode#begin('html')
```


## How to Unencode?

Well, this feature is not yet implemented.

This plugin is for encoding pasted text for you code. You should keep the
original text as comment for readability or somewhere else anyway.


## How to add my own encode type?

Call `encode#add(type,handler)`, the hander here is a function that takes raw
string as parameter and return the encoded string.

