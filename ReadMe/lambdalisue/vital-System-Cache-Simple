vital-System-Cache-Simple
==============================================================================
[![Build Status](https://travis-ci.org/lambdalisue/vital-System-Cache-Simple.svg)](https://travis-ci.org/lambdalisue/vital-System-Cache-Simple)

**Obsolute: Use https://github.com/lambdalisue/vital-System-Cache-Unified**

A simple cache system

- Version:  0.3.0
- Author:   Alisue <lambdalisue@hashnote.net>
- Support:  Vim 7.3 and above


INTRODUCTIONS
==============================================================================

*Vital.System.Cache.Simple* is a simple cache system which use a dictionary
to store values.


USAGE
==============================================================================

The following vimscript recursively calculate a factorial value.
In this method, |Vital.System.Cache.Simple| can be used for memorize the
calculated values.

```vim
let s:V = vital#of('vital')
let s:C = s:V.import('System.Cache.Simple')

let s:factorial_cache = s:C.new()
" override 'cache_key' method to use an integer values as a cache name
function! s:factorial_cache.cache_key(n)
  return "" . a:n
endfunction

function! s:factorial(n)
  if a:n == 0
    return 1
  elseif s:factorial_cache.has(a:n)
    return s:factorial_cache.get(a:n)
  else
    let x = s:factorial(a:n - 1) * a:n
    call s:factorial_cache.set(a:n, x)
    return x
  endif
endfunction

echo s:factorial(10)
```

See [vital-system-cache-simple.txt](./doc/vital-system-cache-simple.txt) for more information.


INSTALL
==============================================================================

```vim
NeoBundle 'lambdalisue/vital-System-Cache-Simple'
```


VITALIZE
==============================================================================

You can add this vital module into your plugin via

```vim
:Vitalize . +System.Cache.Simple
```


LICENSE
==============================================================================

MIT license

    Copyright (c) 2014 Alisue, hashnote.net

    Permission is hereby granted, free of charge, to any person obtaining
    a copy of this software and associated documentation files
    (the "Software"), to deal in the Software without restriction,
    including without limitation the rights to use, copy, modify, merge,
    publish, distribute, sublicense, and/or sell copies of the Software,
    and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
