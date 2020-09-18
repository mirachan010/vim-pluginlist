themis-helper-global
=======================

Global-helper provides a way to register before/after type events globally.
Not like `themis-style-basic-test-name`, events registered with this helper
are registered through the entire tests.

The following special situations are supported.

- initialize()
  - This is called before a first test of a first suite
- before()
  - This is called before a first test of each suite
- before_each()
  - This is called before each test of each suite
- after_each()
  - This is called after each test of each suite
- after()
  - This is called after a last test of each suite
- finalize()
  - This is called after a last test of a last suite

Example
---------------------

```vim
" .themisrc
execute printf(
      \ 'set runtimepath^=%s',
      \ fnameescape('path to themis-helper-global'),
      \)

let s:events = {}

function! s:events.initialize() abort
  call themis#log('Initialize')
endfunction

function! s:events.before() abort
  call themis#log('Before')
endfunction

function! s:events.before_each() abort
  call themis#log('Before each')
endfunction

function! s:events.after_each() abort
  call themis#log('After each')
endfunction

function! s:events.after() abort
  call themis#log('After')
endfunction

function! s:events.finalize() abort
  call themis#log('Finalize')
endfunction

" Register global event
call themis#helper('global').with(s:events)
```
