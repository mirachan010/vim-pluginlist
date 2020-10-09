# vim-frontier

My frontend(JavaScript) Vim plugin packs.

![Execute Eslint realtime](./assets/vim-frontier.gif)

- Eslint
  - Run with job and channel
- Stylelint
  - Run with job and channel
- Mocha
  - Use [vim-quickrun-hook-unittest](https://github.com/heavenshell/vim-quickrun-hook-unittest/)

## Features

- Run eslint realtime
  - It detect source code change immediately and upddate results(no need to save buffer).
- Support `eslint --fix`
  - Experimental feature

## Settings

- Run Eslint.
- Run [vim-flood](https://github.com/heavenshell/vim-flood).
- Update [QuickfixStatus](https://github.com/dannyob/quickfixstatus/)
- Update [vim-hier(forked version)](https://github.com/cohama/vim-hier)

### Lint at save buffer

Run `eslint`, `flow` and open QuickFix if error exists.

```viml
augroup js_enable_quickfix
  autocmd!
  function! s:js_quickfix()
    " Clear QuickFix.
    call setqflist([], 'r')
    call frontier#eslint#run('a')
    " Run realtime check.
    call flood#check_contents#run('a')
  endfunction

  function! s:frontier_after(...)
    if len(getqflist()) > 0
      cwindow
    endif
  endfunction

  autocmd BufWritePost *.js,*.jsx silent! call s:js_quickfix()
augroup END
```

### Realtime check

Run `eslint`, `flow`, update QuickFixStatus and Vim-Hier.

```viml
augroup js_enable_quickfix
  autocmd!
  function! s:js_quickfix()
    " Clear QuickFix.
    call setqflist([], 'r')
    call frontier#eslint#run('a')
    " Run realtime check.
    call flood#check_contents#run('a')
  endfunction

  function! s:frontier_after(...)
    execute ':QuickfixStatusEnable'
    execute ':HierUpdate'
  endfunction

  let g:frontier_callbacks = {}
  let g:frontier_callbacks['eslint'] = {
    \ 'after_run': function('s:frontier_after')
    \ }
  let g:flood_callbacks = {}
  let g:flood_callbacks['check_contents'] = {
    \ 'after_run': function('s:frontier_after')
    \ }

  autocmd BufWritePost *.js,*.jsx silent! call s:js_quickfix()
  autocmd InsertLeave *.js,*.jsx silent! call s:js_quickfix()
  autocmd TextChanged,TextChangedI *.js,*.jsx silent! call s:js_quickfix()
augroup END
```

### Auto fix

Run `eslint --fix` at save buffer.

```viml
augroup js_enable_quickfix
  autocmd!
  function! s:js_quickfix()
    " Clear QuickFix.
    call setqflist([], 'r')
    " Auto fix.
    call frontier#eslint#fix()

    " Run realtime check.
    call flood#check_contents#run('a')
  endfunction

  autocmd BufWritePost *.js,*.jsx silent! call s:js_quickfix()
augroup END
```

#### Note

`frontier#eslint#fix()` only support `BufWritePost`.

`eslint --fix` overwrite file. `frontier#eslint#fix()` reload file silently
after executed.

## License

New BSD License
