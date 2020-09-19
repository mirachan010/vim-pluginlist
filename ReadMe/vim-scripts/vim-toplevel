vim-toplevel
------------

by Marco Hinz

Twitter: https://twitter.com/_mhinz_  
IRC: __mhi^__ (Freenode)

If you use any of my plugins, please star them on github. It's a great way of
getting feedback and gives me the kick to put more time into their development.
If you encounter any bugs or have feature requests, just open an issue report on
Github.

Intro
-----

vim-toplevel helps changing to the root directory of a version control system or
any specified custom directory.

Commands
--------

There are really just two commands that try to accomplish the same: changing to
a certain root directory. Both use different approaches, though.

You'll almost always want to use `:Cd`, because it should be faster since it
doesn't have to run external programs.

`:Root` can be used in case your _hg_ repository contains a directory (or
symlink) named `.git` or even `.hg` although it isn't the one from the root
directory. `:Cd` would use the wrong directory in such cases.

_NOTE_: Found root directories will be cached, so frequent switching between
buffers doesn't effect performance, even when you set up an autocmd to trigger
on BufEnter. For an example see `:h toplevel-section-example`.

---

```
:Cd        change directory for the current window
:Cd!       change directory for all windows
```

This command uses the builtin function _finddir()_ to get a certain root
repository and change to it. It starts searching upwards from the directory of
the current buffer.

```
:Root      change directory for the current window
:Root!     change directory for all windows
```

This command uses the builtin function _system()_ to start external programs
(e.g. _git_ or _hg_) to get the VCS root directory and change to it.

Options
-------

All configuration is done through one variable: `g:toplevel`.

---

```vim
let toplevel = {
    \ 'cdlist': [
        \ ['.git',    'finddir' ],
        \ ['_darcs',  'finddir' ],
        \ ['.svn',    'finddir' ],
        \ ['.fossil', 'findfile'],
        \ ]
    \ ]
```

This option tells `:Cd` what to do. It's a list of lists that contain two
elements:

```
1)  name  The name of the file or directory to look for.

2)  type  This specifies whether to look for a file or directory.
          It should be either 'finddir' or 'findfile'.
```

`:Cd` will test for these files/directories in the given order.

---

```vim
let toplevel = { 'rootlist': ['bzr', 'hg'] }
```

This option tells `:Root` what to do. It's a list of external programs to use.

`:Root` will use these programs in the given order.

_NOTE_: Explicitely setting this variable will lead to less runtime checks and a
tad more performance.

Currently supported:

```
'git'
'hg'
'bzr'
```

---

```vim
let toplevel = { 'vimshell': 1 }
```

If you're on Windows and have vim-misc/vim-shell installed, enabling this will
avoid the annoying flickering of the cmd.exe popping up for the fraction of a
second. Only makes a difference for `:Root`, not for `:Cd`.

Installation & Documentation
----------------------------

If you have no preferred installation method, I suggest using tpope's
[pathogen](https://github.com/tpope/vim-pathogen). Afterwards installing
vim-toplevel is as easy as pie:

    $ git clone https://github.com/mhinz/vim-toplevel ~/.vim/bundle/vim-toplevel

It works without any configuration, but you might want to look into the
documentation for further customization:

    :Helptags  " rebuilding tags files
    :h toplevel

Example config
--------------

```vim
let toplevel = {
      \ 'cdlist': [
            \ ['.git',    'finddir' ],
            \ ['_darcs',  'finddir' ],
            \ ['.svn',    'finddir' ],
            \ ['.fossil', 'findfile'],
            \ ],
      \ 'rootlist': [
            \ 'hg',
            \ 'bzr',
            \ ],
      \ 'vimshell': 0,
      \ }

augroup toplevel
  autocmd BufEnter * silent Cd
augroup END
```

---

This example does exactly the same as the one given above, but uses a slightly
different syntax:

```vim
let toplevel          = {}
let toplevel.vimshell = 0
let toplevel.rootlist = ['hg', 'bzr']
let toplevel.cdlist   = [
      \ ['.git',    'finddir' ],
      \ ['_darcs',  'finddir' ],
      \ ['.svn',    'finddir' ],
      \ ['.fossil', 'findfile'],
      \ ]

augroup toplevel
  autocmd BufEnter * silent Cd
augroup END
```

License
-------

MIT license. Copyright (c) 2013 Marco Hinz.
