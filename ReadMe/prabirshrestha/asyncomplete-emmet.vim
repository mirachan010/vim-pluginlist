# asyncomplete-emmet.vim

[emmet-vim](https://github.com/mattn/emmet-vim) completion source for [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim)

## Install

```vim
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-emmet.vim'
```

## Register asyncomplete-omni.vim

```vim
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emmet#get_source_options({
    \ 'name': 'emmet',
    \ 'whitelist': ['html'],
    \ 'completor': function('asyncomplete#sources#emmet#completor'),
    \ }))
```

## Note

Refer to emmet-vim docs for information no how to expand emmet-vim completion items.
