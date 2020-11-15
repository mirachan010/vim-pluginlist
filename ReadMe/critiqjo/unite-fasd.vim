# unite-fasd.vim

This plugin defines 'fasd' source for [unite.vim](https://github.com/Shougo/unite.vim). It invokes [`fasd` script](https://github.com/clvv/fasd) for gathering candidates.

## Configuration example

```vim
" Path to fasd script (must be set)
let g:unite_fasd#fasd_path = '~/.zsh/fasd/fasd'

" Path to fasd cache -- defaults to '~/.fasd'
let g:unite_fasd#fasd_cache = '~/.cache/fasd'
```

By default, fasd data will not be updated whenever a new file is opened from vim.
To enable updating fasd data from vim, use:
```vim
" Allow `fasd -A` on `BufRead`
let g:unite_fasd#read_only = 0
```

This is to avoid double-counting a file open (one from shell and one from vim).

There are 3 known ways to avoid it, choose one:

1. Keep a separate fasd data file for vim:

   ```vim
   let g:unite_fasd#fasd_cache = '~/.cache/vim_fasd'
   ```

2. Add `vim` (and/or `nvim`) to `$_FASD_IGNORE`:

   ```sh
   _FASD_IGNORE="fasd ls echo vim nvim" # "fasd ls echo" is the default
   ```

3. Add this to your vimrc (so that the first `BufRead` event is ignored):

   ```vim
   au VimEnter * let g:unite_fasd#read_only = 0
   " Note: BufRead is executed before VimEnter
   ```

PS: double counting is not that big a deal, anyway.

## Usage

`:Unite fasd` for listing files indexed by `fasd`. Sorting would be based on default weights assigned by `fasd`.

`:Unite fasd:mru` Same as above, except that it will be sorted in most-recently-used first order.
