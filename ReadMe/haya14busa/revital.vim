:zap: revital.vim :zap:
=======================

[![Build Status](https://travis-ci.org/haya14busa/revital.vim.svg?branch=master)](https://travis-ci.org/haya14busa/revital.vim)
[![Build status](https://ci.appveyor.com/api/projects/status/ptn6o5lgd13737af/branch/master?svg=true)](https://ci.appveyor.com/project/haya14busa/revital-vim/branch/master)
[![](https://img.shields.io/github/tag/haya14busa/revital.vim.svg)](https://github.com/haya14busa/revital.vim/releases)
[![](https://img.shields.io/github/issues/haya14busa/revital.vim.svg)](https://github.com/haya14busa/revital.vim/issues)
[![](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![](https://img.shields.io/badge/doc-%3Ah%20revital.txt-red.svg)](doc/revital.vim.txt)

revital.vim makes [vital.vim](https://github.com/vim-jp/vital.vim) a lot faster.

How to start revital.vim
------------------------
1. Execute `:Vitalize --name={plugin-name} {target-dir} [{module} ...]`
    to embed vital modules if you didn't run :Vitalize yet.
    See :h :Vitalize & :h Vital-usage.
2. Execute `:Revitalize {target-dir}`.
3. Replace vital#of('plugin-name') with vital#{plugin-name}#of().
4. The rest of usage is same as :h Vital-usage.
5. Enjoy speed!

Example
-------

### Install modules for your own plugin

Replace `{pluginname}` with your plugin name.

```vim
:cd $HOME/.vim/bundle/{pluginname}/
:Vitalize --name={pluginname} . Data.List
:Revitalize .
```

### Use vital modules

```vim
let s:V = vital#{pluginname}#of()
let s:List = s:V.import('Data.List')
echo s:List.uniq([1, 1, 2, 3, 1, 2])
" => [1, 2, 3]
```

Profile
-------
### 1) https://github.com/haya14busa/incsearch.vim/pull/112

```vim
command! -bar TimerStart let start_time = reltime()
command! -bar TimerEnd echo reltimestr(reltime(start_time)) | unlet start_time

function! s:_vital_of() abort
  let V = vital#of('incsearch')
  call V.load('Data.List')
  call V.unload()
endfunction

function! s:_vital_incsearch_of() abort
  let V = vital#incsearch#of()
  call V.load('Data.List')
  call V.unload()
endfunction

let s:times = 100

TimerStart
for _ in range(s:times)
  call s:_vital_of()
endfor
TimerEnd
" => 1.565324

TimerStart
for _ in range(s:times)
  call s:_vital_incsearch_of()
endfor
TimerEnd
" => 0.028437
```

vital.vim (x 100) | revital.vim (x 100)
------ | -----
1.565324 sec | 0.028437 sec

### 2) https://github.com/easymotion/vim-easymotion/pull/282

Code is almost same as `1)`.

vital.vim (x 100) | revital.vim (x 100)
------ | -----
1.596271 sec | 0.027732 sec

Some people claims the plugin using vital.vim is slow, so I guess the speed improvement might be even bigger in some environments.
