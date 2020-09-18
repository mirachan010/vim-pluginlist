vital-System-Cache-Unified [![Build Status](https://travis-ci.org/lambdalisue/vital-System-Cache-Unified.svg)](https://travis-ci.org/lambdalisue/vital-System-Cache-Unified)
==============================================================================

An unified cache system.

- Version:  0.1.0
- Author:   Alisue <lambdalisue@hashnote.net>
- Support:  Vim 7.3 and above


INTRODUCTIONS
==============================================================================

*System.Cache.Unified* provide an unified interface for cache system.
The following systems are available.

- *System.Cache.Dummy* : A dummy interface. The instance cache nothing.
- *System.Cache.Simple* : An instance based cache system.
- *System.Cache.File* : A file based cache system.


USAGE
==============================================================================

The following vimscript recursively calculate a factorial value.
In the example, *System.Cache.Simple* is used for memorize the calculated
values but other algorithms are also available.

```vim
let s:V = vital#of('vital')
let s:C = s:V.import('System.Cache.Simple')

let s:factorial_cache = s:C.new()

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

- [A documentation of *System.Cache.Base*](./doc/vital-system-cache-base.txt)
- [A documentation of *System.Cache.Dummy*](./doc/vital-system-cache-dummy.txt)
- [A documentation of *System.Cache.Simple*](./doc/vital-system-cache-simple.txt)
- [A documentation of *System.Cache.File*](./doc/vital-system-cache-file.txt)


CREATE OWN VARIANTS
==============================================================================

You can create your own variants of unified cache system. Just override the
following methods.

-   `has({name})`
-   `get({name}[, {default}])`
-   `set({name}, {value})`
-   `keys()`
-   `remove({name})`
-   `clear()`

The following code will create an instance based cache variants.

```vim
let s:Base = s:V.import('System.Cache.Base')

let s:base = { '_cached': {} }
function! s:base.has(name) abort
  return has_key(self._cached, a:name)
endfunction
function! s:base.get(name, ...) abort
  let default = get(a:000, 0, '')
  return get(self._cached, a:name, default)
endfunction
function! s:base.set(name, value) abort
  call self._cached[a:name] = a:value
endfunction
function! s:base.keys() abort
  return keys(self._cached)
endfunction
function! s:base.remove(name) abort
  if has_key(self._cached, a:name)
    unlet self._cached[a:name]
  endif
endfunction
function! s:base.clear() abort
  let self._cached = {}
endfunction

let s:factorial_cache = extend(s:Base.new(), deepcopy(s:base))
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

Or if you want to create the variants as a vital module, follow the example below:

```vim
function! s:_vital_loaded(V) dict abort " {{{
  let s:Base = a:V.import('System.Cache.Base')
endfunction " }}}
function! s:_vital_depends() abort " {{{
  return ['System.Cache.Base']
endfunction " }}}

let s:base = { '_cached': {} }
function! s:new() " {{{
  return extend(s:Base.new(), deepcopy(s:base))
endfunction " }}}

function! s:base.has(name) abort
  return has_key(self._cached, a:name)
endfunction
function! s:base.get(name, ...) abort
  let default = get(a:000, 0, '')
  return get(self._cached, a:name, default)
endfunction
function! s:base.set(name, value) abort
  call self._cached[a:name] = a:value
endfunction
function! s:base.keys() abort
  return keys(self._cached)
endfunction
function! s:base.remove(name) abort
  if has_key(self._cached, a:name)
    unlet self._cached[a:name]
  endif
endfunction
function! s:base.clear() abort
  let self._cached = {}
endfunction
```

INSTALL
==============================================================================

```vim
NeoBundle 'lambdalisue/vital-System-Cache-Unified'
```


VITALIZE
==============================================================================

You can add required cache system as:

```vim
:Vitalize . +System.Cache.Base
:Vitalize . +System.Cache.Dummy
:Vitalize . +System.Cache.Simple
:Vitalize . +System.Cache.File
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
