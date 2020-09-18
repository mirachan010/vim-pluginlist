vital-Vim-Guard
==============================================================================
[![Travis CI](https://img.shields.io/travis/lambdalisue/vital-Vim-Guard/master.svg?style=flat-square&label=Travis%20CI)](https://travis-ci.org/lambdalisue/vital-Vim-Guard) [![AppVeyor](https://img.shields.io/appveyor/ci/lambdalisue/vital-Vim-Guard/master.svg?style=flat-square&label=AppVeyor)](https://ci.appveyor.com/project/lambdalisue/vital-Vim-Guard/branch/master) ![Version 0.1.0](https://img.shields.io/badge/version-0.1.0-yellow.svg?style=flat-square) ![Support Vim 7.3 or above](https://img.shields.io/badge/support-Vim%207.3%20or%20above-yellowgreen.svg?style=flat-square) [![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE) [![Doc](https://img.shields.io/badge/doc-%3Ah%20vital--Vim--Guard-orange.svg?style=flat-square)](doc/vital-vim-guard.txt)

**DEPERECATED**
This module is ported in [vital.vim](https://github.com/vim-jp/vital.vim)

Introductions
-------------------------------------------------------------------------------
This is a vital module for store/restore values of options and variables.
The main concept was taken from [osyo-manga/vital-unlocker](https://github.com/osyo-manga/vital-unlocker) but this module is more simple and the implementation is a bit different.


Install
-------------------------------------------------------------------------------

```vim
NeoBundle 'lambdalisue/vital-Vim-Guard'
```

And call the following to bundle this plugin

```vim
:Vitalize . +Vim.Guard
```

Usage
-------------------------------------------------------------------------------

Specify options/variables to `Vital.Vim.Guard.store()` and restore previous
values with `Vital.Vim.Guard-instance.restore()` like:

```vim
let s:G = s:V.import('Vim.Guard')
let g:foo = 'foo'

function! s:foobar() abort
  let foo = 'foo'

  " Guard options/variables
  let guard = s:G.store(
    \ '&backup',
    \ 'g:foo',
    \ ['foo', l:],
    \)

  " Assign temporary values
  set nobackup
  unlet g:foo
  let g:foo = 1
  unlet foo
  let foo = []

  " restore previous values
  call guard.restore()

  " Check if the value is restored
  echo &backup
  " => 1
  echo g:foo
  " => 'foo'
  echo foo
  " => foo
endfunction
```

License
-------------------------------------------------------------------------------
The MIT License (MIT)

Copyright (c) 2015 Alisue, hashnote.net

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
