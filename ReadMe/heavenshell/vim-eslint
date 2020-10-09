# vim-eslint

[![Build Status](https://travis-ci.org/heavenshell/vim-eslint.svg?branch=master)](https://travis-ci.org/heavenshell/vim-eslint)

An asynchronous Eslint(@typescript-eslint) for Vim.

Can use with TypeScript + Eslint + Prettier.

![Realtime style check](./assets/vim-eslint.gif)

## Invoke manually

Open TypeScript file and just execute `:Eslint`.

## Automatically lint on save

```viml
autocmd BufWritePost *.ts,*.tsx call eslint#run('a', win_getid())
```

## Autofix

Execute `:EslintFix` and automatically fix.

## Integrate with Tsuquyomi

You can use Tsuquyomi's `TsuAsyncGeterr` and vim-eslint.
Set followings to your vimrc.

```viml
augroup typescript
  function! s:typescript_after(ch, msg)
    let cnt = len(getqflist())
    if cnt > 0
      echomsg printf('[Eslint] %s errors', cnt)
    endif
  endfunction
  let g:eslint_callbacks = {
    \ 'after_run': function('s:typescript_after')
    \ }

  let g:tsuquyomi_disable_quickfix = 1

  function! s:ts_callback(qflist) abort
    call setqflist(a:qflist)
    let winid = win_getid()
    call eslint#run('a', winid)
  endfunction

  function! s:check()
    let winid = win_getid()
    call setqflist([], 'r')
    call tsuquyomi#registerNotify(function('s:ts_callback'), 'diagnostics')
    call tsuquyomi#asyncCreateFixlist()
  endfunction

  autocmd InsertLeave,BufWritePost *.ts,*.tsx silent! call s:check()
augroup END
```

## License

New BSD License
