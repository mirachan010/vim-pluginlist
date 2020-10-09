# vim-snowflake

[![Build Status](https://travis-ci.org/heavenshell/vim-snowflake.svg?branch=master)](https://travis-ci.org/heavenshell/vim-snowflake)

An asynchronous Python source code checker for Vim.

![Realtime style check](./assets/vim-snowflake.gif)

## Features

Install flake8 by `venv`, `virtualenv` whatever you like.

```console
pip install flake8
```

### Realtime check

A lot of style checker triggered by save buffer.

vim-snowflake detect source code change immediately and upddate results(no need to save buffer).

### More realtime

TextChange and TextChangeI event can detect more realtime.

```viml
autocmd BufWritePost *.py call snowflake#run()
autocmd InsertLeave *.py call snowflake#run()
autocmd TextChanged,TextChangedI *.py call snowflake#run()
```

### Async

Using Vim's job and channels features for asynchronous check.

### Style checkers

- Flake8
- Mypy(Experimental support)

## Configurations

### Integrate with other plugins

snowflake have some hook points to inject various functions.

|Hook point   |Hook timing                                          |
|:------------|:----------------------------------------------------|
|`before_init`|Inject to snowflake#init() before called             |
|`after_init` |Inject to snowflake#init() after called              |
|`before_run` |Inject to snowflake#{flake8,mypy}#run() before called|
|`after_run`  |Inject to snowflake#{flake8,mypy}#run() after called |


#### Run Flake8, QuickFixStatus and Vim-Hier

```viml
function! s:snowflake_after(...)
  execute ':QuickfixStatusEnable'
  execute ':HierUpdate'
endfunction

let g:snowflake_callbacks = {
  \ 'after_init': function('snowflake#flake8#run'),
  \ 'after_run': function('s:snowflake_after')
  \ }

autocmd BufWritePost *.py call snowflake#flake8#run()
autocmd InsertLeave *.py call snowflake#flake8#run()
autocmd TextChanged,TextChangedI *.py call snowflake#flake8#run()
```

- Execute right after source code open
- Show QuickFix error in statusline, and highlight QuickFix errors run
  quickfixstatus.vim and vim-hier.

#### Run Flake8, Mypy, QuickFixStatus and Vim-Hier.

```viml
function! s:snowflake_after(...)
  execute ':QuickfixStatusEnable'
  execute ':HierUpdate'
endfunction

let g:snowflake_callbacks = {
  \ 'after_init': function('snowflake#run'),
  \ 'after_run': function('s:snowflake_after')
  \ }

autocmd BufWritePost *.py call snowflake#run()
autocmd InsertLeave *.py call snowflake#run()
autocmd TextChanged,TextChangedI *.py call snowflake#run()
```

- Execute right after source code open
- Show QuickFix error in statusline, and highlight QuickFix errors run
  quickfixstatus.vim and vim-hier.

## License

New BSD License
