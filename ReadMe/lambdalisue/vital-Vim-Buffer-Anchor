vital-Vim-Buffer-Anchor
==============================================================================
[![Travis CI](https://img.shields.io/travis/lambdalisue/vital-Vim-Buffer-Anchor/master.svg?style=flat-square&label=Travis%20CI)](https://travis-ci.org/lambdalisue/vital-Vim-Buffer-Anchor)
[![AppVeyor](https://img.shields.io/appveyor/ci/lambdalisue/vital-Vim-Buffer-Anchor/master.svg?style=flat-square&label=AppVeyor)](https://ci.appveyor.com/project/lambdalisue/vital-Vim-Buffer-Anchor/branch/master)
![Version 2.0.0](https://img.shields.io/badge/version-2.0.0-yellow.svg?style=flat-square)
![Support Vim 7.4.001 or above](https://img.shields.io/badge/support-Vim%207.4.001%20or%20above-yellowgreen.svg?style=flat-square)
![Support Neovim 0.1.7 or above](https://img.shields.io/badge/support-Neovim%200.1.7%20or%20above-yellowgreen.svg?style=flat-square)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Doc](https://img.shields.io/badge/doc-%3Ah%20vital--Vim--Buffer--Anchor-orange.svg?style=flat-square)](doc/Vital/Vim/Buffer/Anchor.txt)


Introductions
-------------------------------------------------------------------------------

This module is used to find/focus a suitable anchor buffer which is used for
opening a new buffer from a non-file buffer such as `quickfix` window.

Use this module to focus an anchor buffer prior to open a new buffer.
The following code is an example simple file manager.

```vim
let s:Anchor = vital#{plugin-name}#import('Vim.Buffer.Anchor')

function! s:open_file(opener) abort
  let filename = expand(getline('.'))
  " Note: focus() is not called when 'opener' is pedit or tabedit
  call s:Anchor.focus_if_available(a:opener)
  execute a:opener . ' ' . fnameescape(filename)
endfunction

function! s:open_file_manager(root) abort
  topleft 50 vsplit FileManager
  let candidates = split(glob(a:root . '/*'), "\r\\?\n")
  let candidates = filter(candidates, 'filereadable(v:val)')
  let candidates = map(candidates, 'fnamemodify(v:val, '':~:.'')')
  let candidates = ['File Manager'] + candidates
  call setline(1, candidates)
  nnoremap <buffer> e :<C-u>call <SID>open_file('ed')<CR>
  nnoremap <buffer> s :<C-u>call <SID>open_file('sp')<CR>
  nnoremap <buffer> v :<C-u>call <SID>open_file('vs')<CR>
  nnoremap <buffer> p :<C-u>call <SID>open_file('ped')<CR>
  nnoremap <buffer> t :<C-u>call <SID>open_file('tabe')<CR>
  " Attach an anchoring feature
  call s:Anchor.attach()
endfunction

command! FileManager call s:open_file_manager(getcwd())
```

Install
-------------------------------------------------------------------------------

Install this repository with your favorite Vim plugin manager and then

```vim
:Vitalize . +Vim.Buffer.Anchor
```

To activate Vim.Buffer.Anchor on your plugin.
