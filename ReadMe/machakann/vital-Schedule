# vital-Schedule

[![Build Status](https://travis-ci.org/machakann/vital-Schedule.svg)](https://travis-ci.org/machakann/vital-Schedule)
[![Build status](https://ci.appveyor.com/api/projects/status/dyjxcv4q9n26v0ep?svg=true)](https://ci.appveyor.com/project/machakann/vital-schedule)

Handling auto-command and timer



## Motivation

When I make a vim plugin, I frequently write codes to run a function later. Currently, vim script API gives two choices for the case, that is, auto-command event and timer. However, these measures have quite different interfaces; auto-command events are handled by commands while a timer is controlled by functions. What I want is an easy and unified interface to them.



## Usage

This `vital-Schedule` module provides another interface to handle auto-command and timer. It enables us to write complicated scheduled tasks at ease.

For example, it is a little hassle to run a function only once by using native auto-command interface; the function should unset the auto-command events hooked to by itself.

```vim
function! s:main() abort
  " set the autocmd event for s:run_once()
  augroup example-augroup
    autocmd!
    autocmd WinLeave * call s:run_once()
  augroup END
endfunction

function! s:run_once() abort
  call s:do_something()

  " unset the autocmd events
  augroup example-augroup
    autocmd! WinLeave
  augroup END
endfunction

function! s:do_something() abort
  " do something here
endfunction
```

`Task` object in this module makes the situation simpler. `s:run_once()` is no longer required with it.

```vim
let s:Schedule = vital#{pluginname}#new().import('Schedule')

function! s:main() abort
  " set task
  let task = s:Schedule.Task()
  call task.call(function('s:do_something'), [])
  call task.waitfor(['WinLeave'])
endfunction

function! s:do_something() abort
  " do something here
endfunction
```

Replace `{pluginname}` with your plugin name. Check [:help vital.vim](https://github.com/vim-jp/vital.vim/blob/master/doc/vital.txt) and [:help Vitalizer](https://github.com/vim-jp/vital.vim/blob/master/doc/vitalizer.txt).

Moreover, it can accept multiple triggers. For example, if you want to run a function after 3000 milliseconds passed or when user starts editing:

```vim
let s:Schedule = vital#{pluginname}#new().import('Schedule')

function! s:main() abort
  " set task
  let task = s:Schedule.Task()
  call task.call(function('s:do_something'), [])
  call task.waitfor([3000, 'TextChanged', 'TextChangedI'])
endfunction

function! s:do_something() abort
  " do something here
endfunction
```

`s:do_something()` will be triggered by the earliest one in 3000 milliseconds, `TextChanged` or `TextChangedI`.



## Dependency

 - Vim 8.0 or higher.
 - [vital.vim](https://github.com/vim-jp/vital.vim)

This is an external module of `vital.vim` plugin. Install `vital.vim` and `vital-Schedule`, then use `:Vitalize` command. See [:help Vitalizer](https://github.com/vim-jp/vital.vim/blob/master/doc/vitalizer.txt).

```vim
:Vitalize --name={pluginname} . Schedule
```



## License: NYSL license
  * [Japanese](http://www.kmonos.net/nysl/)
  * [English (Unofficial)](http://www.kmonos.net/nysl/index.en.html)


