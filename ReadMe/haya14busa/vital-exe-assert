:raising_hand: vital-exe-assert :raising_hand:
==============================================

Yet another assertion library for Vim script

### NOTE
- You can leave assertions in production code because it doesn't execute assertions in production code by default
- But, Vim script doesn't have lazy evaluation feature, so arguments of assert functions will be evaluated even if assertions doesn't run.
- Use `:exe` (`:execute`) instead of `:call` to execute assertions
- See `:h themis-helper-assert` for available assert functions
- TODO: help document

Installation
------------

[Neobundle](https://github.com/Shougo/neobundle.vim) / [Vundle](https://github.com/gmarik/Vundle.vim) / [vim-plug](https://github.com/junegunn/vim-plug)

```vim
NeoBundle 'vim-jp/vital.vim'
NeoBundle 'haya14busa/vital-exe-assert'

Plugin 'vim-jp/vital.vim'
Plugin 'haya14busa/vital-exe-assert'

Plug 'vim-jp/vital.vim'
Plug 'haya14busa/vital-exe-assert'
```

### Embet vital-exe-assert into your plugin

See `:h :Vitalize` for more information.

```
:Vitalize . --name={plugin_name} ExeAssert
```

※ Above command assumes current directory is the root of your plugin repository.

Usage
-----

### Basic

#### $MYVIMRC

```vim
let g:__vital_exe_assert_config = { '__debug__': 1 }
```

#### /path/to/your/example.vim

```vim
let s:V = vital#of('vital')
let s:assert = s:V.import('ExeAssert').make()

function! s:modulo_test(n) abort
  exe s:assert.is_number(a:n)
  let m = a:n % 3
  if m ==# 0
  elseif m ==# 1
  else
    exe s:assert.equals(m, 2, printf('assume %d %% 3 == 2, but...???', a:n))
  endif
endfunction

call s:modulo_test(0)
call s:modulo_test(1)
call s:modulo_test(2)
call s:modulo_test('-1')
call s:modulo_test(-100)
```

#### :source /path/to/your/example.vim

```
function <SNR>821_modulo_test, line 1
AssertionError: The type of value was expected to be number, but it was not the case.
    expected type: number
         got type: string
        got value: '-1'
Error detected while processing function <SNR>821_modulo_test:
line    1:
E605: Exception not caught: vital: ExeAssert: abort
```

※ It seems that vim cannot output multiple lines with `:throw`, so `vital-exe-assert` throws additional aborting exception.


### Disable abortion

Do not stop execution if `__abort__` option is disabled and there are no additional `:throw`.

#### $MYVIMRC

```vim
let g:__vital_exe_assert_config = {
\ '__debug__': 1,
\ '__abort__': 0
\ }
```

#### :source /path/to/your/example.vim

```
function <SNR>821_modulo_test, line 1
AssertionError: The type of value was expected to be number, but it was not the case.
    expected type: number
         got type: string
        got value: '-1'
function <SNR>821_modulo_test, line 6
AssertionError: The equivalent values were expected, but it was not the case.
    expected: 2
         got: -1
assume -1 % 3 == 2, but...???
function <SNR>821_modulo_test, line 6
AssertionError: The equivalent values were expected, but it was not the case.
    expected: 2
         got: -1
assume -100 % 3 == 2, but...???
```

### Assert in production code

If you want to execute assertions in production code, inject configuration as a argument for `make()`

#### /path/to/your/example.vim

```vim
let s:V = vital#of('vital')
let s:assert = s:V.import('ExeAssert').make({'__debug__': 1})
```

Special thanks
--------------
Currently, vital-exe-assert copy the code from vim-themis for assert functions.

- Author: @thinca (https://github.com/thinca)
- Plugin: https://github.com/thinca/vim-themis

:bird: Author
-------------
haya14busa (https://github.com/haya14busa)
