vital-snoop.vim
===============
[![Build Status](https://img.shields.io/travis/haya14busa/vital-snoop.vim/master.svg?style=flat-square)](https://travis-ci.org/haya14busa/vital-snoop.vim)
[![](https://img.shields.io/github/release/haya14busa/vital-snoop.vim.svg?style=flat-square)](https://github.com/haya14busa/vital-snoop.vim/releases)
[![](https://img.shields.io/github/issues/haya14busa/vital-snoop.vim.svg?style=flat-square)](https://github.com/haya14busa/vital-snoop.vim/issues)
[![](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![](https://img.shields.io/badge/doc-%3Ah%20vital--snoop.txt-red.svg?style=flat-square)](doc/vital-snoop.txt)

Snoop script-local functions
----------------------------

Vital.Vim.Snoop provides a way to snoop script local functions.

Installation
------------

### 1. Install vital.vim and vital-snoop.vim with your favorite plugin manager.

vital.vim: https://github.com/vim-jp/vital.vim

```vim
NeoBundle 'vim-jp/vital.vim'
NeoBundle 'haya14busa/vital-snoop.vim'

Plugin 'vim-jp/vital.vim'
Plugin 'haya14busa/vital-snoop.vim'

Plug 'vim-jp/vital.vim'
Plug 'haya14busa/vital-snoop.vim'
```

### 2. Embed vital-snoop.vim into your plugin with :Vitalize (assume current directory is the root of your plugin repository).
See `:Vitalize` for more information.

```vim
:Vitalize . --name={plugin_name} Data.String.Interpolation
```

### 3. You can update vital-snoop.vim with :Vitalize.

```vim
:Vitalize .
```

Usage
-----

```vim
let s:V = vital#of('vital')
let s:S = s:V.import('Vim.Snoop')

"" Get <SID> with relative path to &runtimepath
" e.g. starts with autoload/, plugin/, etc...
" (autoload/**/.vim, plugin/**/.vim)
:echo s:S.sid('autoload/Snoop/test/snoop_relative.vim')
" => <SID>

"" Get the dict which contains script local functions with absolute
" path
:let sf = s:S.sfunc('~/.vim/bundle/vital-snoop/test/files/snoop.vim')
:echo sf
" =>
"  {
"   'double': function('<SNR>439_double'),
"   '_power': function('<SNR>439__power')
"  }
:echo sf.double(3) | " => 6
:echo sf._power(3) | " => 9
```

#### test/files/snoop.vim

```vim
function! s:double(x) abort
    return a:x * 2
endfunction

function! s:_power(x) abort
    return a:x * a:x
endfunction
```

Author
------
haya14busa (https://github.com/haya14busa)

Document
--------
[:h vital-snoop.txt](doc/vital-snoop.txt)
