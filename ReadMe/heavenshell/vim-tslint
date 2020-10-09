# vim-tslint

[![Build Status](https://travis-ci.org/heavenshell/vim-tslint.svg?branch=master)](https://travis-ci.org/heavenshell/vim-tslint)

An asynchronous Tslint for Vim.

![Realtime style check](./assets/vim-tslint.gif)

## Invoke manually

Open TypeScript file and just execute `:Tslint`.

## Automatically lint on save

```viml
autocmd BufWritePost *.ts,*.tsx call tslint#run('a', win_getid())
```

## Autofix

Execute `:TslintFix` and automatically fix.

## Integrate with Tsuquyomi

You can use Tsuquyomi's `TsuGeterr` and Tslint.
Set followings to your vimrc.

```viml
augroup tslint
  function! s:typescript_after(ch, msg)
    let cnt = len(getqflist())
    if cnt > 0
      echomsg printf('[Tslint] %s errors', cnt)
    endif
  endfunction
  let g:tslint_callbacks = {
    \ 'after_run': function('s:typescript_after')
    \ }

  let g:tsuquyomi_disable_quickfix = 1

  function! s:ts_quickfix()
    let winid = win_getid()
    execute ':TsuquyomiGeterr'
    call tslint#run('a', winid)
  endfunction

  autocmd BufWritePost *.ts,*.tsx silent! call s:ts_quickfix()
  autocmd InsertLeave *.ts,*.tsx silent! call s:ts_quickfix()
augroup END
```

## License

New BSD License
