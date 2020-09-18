vital-Vim-Python
==============================================================================
[![Travis CI](https://img.shields.io/travis/lambdalisue/vital-Vim-Python/master.svg?style=flat-square&label=Travis%20CI)](https://travis-ci.org/lambdalisue/vital-Vim-Python) [![AppVeyor](https://img.shields.io/appveyor/ci/lambdalisue/vital-Vim-Python/master.svg?style=flat-square&label=AppVeyor)](https://ci.appveyor.com/project/lambdalisue/vital-Vim-Python/branch/master) ![Version 0.1.0](https://img.shields.io/badge/version-0.1.0-yellow.svg?style=flat-square) ![Support Vim 7.3 or above](https://img.shields.io/badge/support-Vim%207.3%20or%20above-yellowgreen.svg?style=flat-square) [![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE) [![Doc](https://img.shields.io/badge/doc-%3Ah%20vital--Vim--Python-orange.svg?style=flat-square)](doc/vital-vim-python.txt)

**DEPERECATED**
This module is ported in [vital.vim](https://github.com/vim-jp/vital.vim)

Introductions
-------------------------------------------------------------------------------
`Vital.Vim.Python` provides compatible functions of `python`, `pyfile`, and `pyeval`.
It automatically uses a correct function/command to execute a Python code/file.

Install
-------------------------------------------------------------------------------

```vim
NeoBundle 'lambdalisue/vital-Vim-Python'
```

And call the following to bundle this plugin

```vim
:Vitalize . +Vim.Python
```

Usage
-------------------------------------------------------------------------------

```vim
let s:V = vital#of('vital')
let s:P = s:V.import('Vim.Python')

" Check if Python is enabled
echo s:P.is_enabled()
" => 0 or 1, depends on +python/+python3

" Execute a Python file
call s:P.exec_file('your/python/file.py')

" Execute a Python code
call s:P.exec_code('print("Hello Python")')

" Evaluate a Python expression and return
echo s:P.eval_expr('1 + 1')
" => 2

" Get a current major version
echo s:P.get_major_version()
" => 0, 2, or 3, depends on +python/+python3

" Set a current major versioin
" NOTE: It only affects when a Vim was compiled with +python/+python3
call s:P.set_major_version(2)
echo s:P.eval_expr('print(sys.version_info.major)')
" => 2
call s:P.set_major_version(3)
echo s:P.eval_expr('print(sys.version_info.major)')
" => 3
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
