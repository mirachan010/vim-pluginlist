String interpolation in Vim
===========================
[![Build Status](https://travis-ci.org/haya14busa/vital-string-interpolation.svg?branch=master)](https://travis-ci.org/haya14busa/vital-string-interpolation)

Vital.Data.String.Interpolation is String interpolation[1] library.

**Farewell `'ugly' . 'dot' . 'string' . 'concatenation'` and meets the `'beautiful ${string} interpolation'` :heartbeat:**

[1]: http://en.wikipedia.org/wiki/String_interpolation

Installation
------------

### 1. Install vital.vim and vital-string-interpolation with your favorite plugin manager.

vital.vim: https://github.com/vim-jp/vital.vim

```vim
NeoBundle 'vim-jp/vital.vim'
NeoBundle 'haya14busa/vital-string-interpolation'

Plugin 'vim-jp/vital.vim'
Plugin 'haya14busa/vital-string-interpolation'

Plug 'vim-jp/vital.vim'
Plug 'haya14busa/vital-string-interpolation'
```

### 2. Embed vital-string-interpolation into your plugin with :Vitalize (assume current directory is the root of your plugin repository).
See `:Vitalize` for more information.

```vim
:Vitalize . --name={plugin_name} Data.String.Interpolation
```

### 3. You can update vital-string-interpolation with :Vitalize.

```vim
:Vitalize .
```

Usage
-----

```vim
let s:V = vital#of("vital")
let s:I = s:V.import("Data.String.Interpolation")

echo s:I.interpolate('Hi, ${name}!', {'name': 'haya14busa'})
" => Hi, haya14busa!

let scores = [
\   {'name': 'haya14busa', 'score': 14},
\   {'name': 'tom', 'score': 32}
\ ]
for score in scores
    echo s:I.format('Hi, ${name}. Your SCORE is ${score}!', score)
endfor
" => Hi, haya14busa. Your SCORE is 14!
" => Hi, tom. Your SCORE is 32!

" You can just pass :h internal-variables as a context.
function! s:IIFE() abort
    let name = 'haya14busa'
    return s:I.s('Hi, ${name}!', l:)
endfunction
echo s:IIFE()
" => Hi, haya14busa!
```

Author
------
haya14busa (https://github.com/haya14busa)

Document
--------
[:h vital-data-string-interpolation.txt](doc/vital-data-string-interpolation.txt)
