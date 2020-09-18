vim-asyncomplete-unicodesymbol.vim
==================================

This is a completion source for [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim) to convert a LaTeX-like sequence to a unicode symbol; for example `\alpha` to `α`.

![demo](https://imgur.com/GNOblmZ.gif)

## Requirement

 - [julia-vim](https://github.com/JuliaEditorSupport/julia-vim)
 - [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim)
 - [asyncomplete-ezfilter.vim](https://github.com/machakann/asyncomplete-ezfilter.vim)  (not essential but recommended)

## Usage

Add lines into your vimrc. `asyncomplete-ezfilter.vim` is recommended to use, because `asyncomplete-unicodesymbol.vim` requires an custom filter using `item.menu` rather than `item.word`.

```vim
let g:asyncomplete_preprocessor = [function('asyncomplete#preprocessor#ezfilter#filter')]

autocmd User asyncomplete_setup call asyncomplete#register_source(
  \ asyncomplete#sources#unicodesymbol#get_source_options({
  \   'name': 'unicodesymbol',
  \   'whitelist': ['julia'],
  \   'completor': function('asyncomplete#sources#unicodesymbol#completor'),
  \ }))

let g:asyncomplete#preprocessor#ezfilter#config = {}
let g:asyncomplete#preprocessor#ezfilter#config.unicodesymbol =
  \ {ctx, items -> filter(items, 'ctx.match(v:val.menu)')}
```
