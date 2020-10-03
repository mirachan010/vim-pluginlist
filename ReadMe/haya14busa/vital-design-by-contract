:crystal_ball: vital-design-by-contract
=======================================
Design by Contract in Vim script

Installation
------------

Dependencies: https://github.com/vim-jp/vital.vim

vital-design-by-contract is an external module of vital.vim

```vim
NeoBundle 'vim-jp/vital.vim'
NeoBundle 'haya14busa/vital-design-by-contract'

Plugin 'vim-jp/vital.vim'
Plugin 'haya14busa/vital-design-by-contract'

Plug 'vim-jp/vital.vim'
Plug 'haya14busa/vital-design-by-contract'
```

Example
-------

with https://github.com/haya14busa/vital-power-assert

```vim
let s:V = vital#of('vital')
let s:DbC = s:V.import('Vim.DbC')
execute s:V.import('Vim.PowerAssert').define('Assert')

function! s:flatten(list, ...) abort
  let limit = a:0 > 0 ? a:1 : -1
  let memo = []
  if limit == 0
    return a:list
  endif
  let limit -= 1
  for Value in a:list
    let memo +=
    \  type(Value) == type([]) ?
    \    s:flatten(Value, limit) :
    \    [Value]
    unlet! Value
  endfor
  return memo
endfunction

" s:__pre_{func}() will be called before {func} with a:var args as a:in
function! s:__pre_flatten(in) abort
  " input should be list
  Assert type(a:in.list) is# type([])
  " limit should be number
  Assert type(get(a:in, 1, 0)) is# type(0)
  " You can use a:in.var to access a:var
  echo '__pre_flatten : in : ' . string(a:in.list)
endfunction

" s:__post_{func}() will be called after {func} with a:var args as a:in and
" returned value as a:out
function! s:__post_flatten(in, out) abort
  " Each value of returned list should not be list
  for l:X in a:out
    Assert type(l:X) isnot# type([])
  endfor
  echo '__post_flatten: out: ' . string(a:out)
endfunction

" You can disable contract check for production if you want like this
if get(g:, 'pluginname_enable_dcb', 1)
  " Magic happens!
  execute s:DbC.dbc()
endif

echo s:flatten([[1], [2, [3], [[4]]]])
" =>
" __pre_flatten : in : [[1], [2, [3], [[4]]]]
" __pre_flatten : in : [1]
" __post_flatten: out: [1]
" __pre_flatten : in : [2, [3], [[4]]]
" __pre_flatten : in : [3]
" __post_flatten: out: [3]
" __pre_flatten : in : [[4]]
" __pre_flatten : in : [4]
" __post_flatten: out: [4]
" __post_flatten: out: [4]
" __post_flatten: out: [2, 3, 4]
" __post_flatten: out: [1, 2, 3, 4]
" [1, 2, 3, 4]
```
