# vim-misspell

[![Build Status](https://travis-ci.org/heavenshell/vim-misspell.svg?branch=master)](https://travis-ci.org/heavenshell/vim-misspell)

misspell for Vim.

![Realtime spell check](./assets/vim-misspell.gif)

`vim-misspell` is a wrapper of [misspell](https://github.com/client9/misspell/).

## Dependencies

Install [misspell](https://github.com/client9/misspell/#install).

## Usage

### Invoke manually

Open file and just execute `:Misspell`.

That's it.

### Automatically check on save

```viml
autocmd BufWritePost * call misspell#run()
```
#### Run Misspell, QuickFixStatus and Vim-Hier

```viml
function! s:misspell_after(...)
  execute ':QuickfixStatusEnable'
  execute ':HierUpdate'
endfunction

let g:misspell_callbacks = {
  \ 'after_run': function('s:misspell_after')
  \ }

autocmd BufWritePost * call misspell#run()
autocmd InsertLeave * call misspell#run()
autocmd TextChanged,TextChangedI * call misspell#run()
```

## License

New BSD License
