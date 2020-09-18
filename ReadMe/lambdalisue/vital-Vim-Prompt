vital-Vim-Prompt
==============================================================================
[![Travis CI](https://img.shields.io/travis/lambdalisue/vital-Vim-Prompt/master.svg?style=flat-square&label=Travis%20CI)](https://travis-ci.org/lambdalisue/vital-Vim-Prompt)
[![AppVeyor](https://img.shields.io/appveyor/ci/lambdalisue/vital-Vim-Prompt/master.svg?style=flat-square&label=AppVeyor)](https://ci.appveyor.com/project/lambdalisue/vital-Vim-Prompt/branch/master)
![Version 1.0.0](https://img.shields.io/badge/version-1.0.0-yellow.svg?style=flat-square)
![Support Vim 7.4 or above](https://img.shields.io/badge/support-Vim%207.4%20or%20above-yellowgreen.svg?style=flat-square)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE.md)
[![Doc](https://img.shields.io/badge/doc-%3Ah%20vital--Vim--Prompt-orange.svg?style=flat-square)](doc/vital-vim-prompt.txt)


Introductions
-------------------------------------------------------------------------------
This module provides a customizable commandline interface.
This implementation focused to provide a simple code. See [osyo-manga/vital-over](https://github.com/osyo-manga/vital-over) if you want a future rich commandline interface.

Install
-------------------------------------------------------------------------------

```vim
Plug 'lambdalisue/vital-Vim-Prompt'
```

And call the following to bundle this plugin

```vim
:Vitalize . +Vim.Prompt
```

Usage
-------------------------------------------------------------------------------

```vim
let s:Prompt = vital#vital#import('Vim.Prompt')

let s:prompt = s:Prompt.new({
      \ 'prefix': '# ',
      \})

function! s:prompt.keydown(key, char) abort
  if a:key ==# "\<F1>"
    let self.replace('F1 has pressed')
    let self._exit = 1
    return 1
  endif
  return 0
endfunction

function! s:prompt.callback() abort
  if get(self, '_exit')
    return 1
  endif
  return 0
endfunction

call s:prompt.start()
```
