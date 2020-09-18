syntax source for asyncomplete.vim via neco-syntax
==================================================

Provide syntax autocompletion source for [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim) via
[neco-syntax](https://github.com/Shougo/neco-syntax)

### Installing

```vim
Plug 'Shougo/neco-syntax'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-necosyntax.vim'
```

#### Registration

```vim
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necosyntax#get_source_options({
    \ 'name': 'necosyntax',
    \ 'whitelist': ['*'],
    \ 'completor': function('asyncomplete#sources#necosyntax#completor'),
    \ }))
```
