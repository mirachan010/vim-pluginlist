macra
==============================================================================
![Version 0.1.0](https://img.shields.io/badge/version-0.1.0-yellow.svg?style=flat-square)
![Support Vim 8.0.0027 or above](https://img.shields.io/badge/support-Vim%208.0.0027%20or%20above-yellowgreen.svg?style=flat-square)
![Support Neovim 0.1.7 or above](https://img.shields.io/badge/support-Neovim%200.1.7%20or%20above-yellowgreen.svg?style=flat-square)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Doc](https://img.shields.io/badge/doc-%3Ah%20macra-orange.svg?style=flat-square)](doc/macra.txt)
[![Powered by vital.vim](https://img.shields.io/badge/powered%20by-vital.vim-80273f.svg?style=flat-square)](https://github.com/vim-jp/vital.vim)

Temporary disable mappings in macro recording and execution.

Example
------------------------

```vim
" Useful mappings but these are not useful in macro ...
nmap f <Plug>(easymotion-fl)
xmap f <Plug>(easymotion-fl)
omap f <Plug>(easymotion-fl)
nmap F <Plug>(easymotion-Fl)
xmap F <Plug>(easymotion-Fl)
omap F <Plug>(easymotion-Fl)

call macra#register('f', 'nxo')
call macra#register('F', 'nxo')

nmap q <Plug>(macra-start)
nmap @ <Plug>(macra-run)
xmap @ <Plug>(macra-run)

" Now f, F are disabled during macro recording and execution
```
