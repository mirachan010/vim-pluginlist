vim-marron
===============================================================================
![Version 0.1.0](https://img.shields.io/badge/version-0.1.0-yellow.svg?style=flat-square)
![Support Vim 7.4 or above](https://img.shields.io/badge/support-Vim%207.4%20or%20above-yellowgreen.svg?style=flat-square)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE.md)
[![Doc](https://img.shields.io/badge/doc-%3Ah%20marron-orange.svg?style=flat-square)](doc/marron.txt)

*vim-marron* is a plugin to reload your `vimrc` with `:setglobal` instead of `set`.
When a `vimrc` is reloaded, most of options were configured via `:set` command, indicating that reloading `vimrc` overwrite the local settings.
marron use a cached `vimrc` which `:set` commands are substituted to `:setglobal` so that relading such `vimrc` won't overwrite current local options.

Usage
-----------
Add the followings to your `vimrc`.

```vim
nmap <Leader><Leader>rr <Plug>(marron-reload-vimrc)
nmap <Leader><Leader>rg <Plug>(marron-reload-gvimrc)
```

Then hit `Leader><Leader>rr`or `Leader><Leader>rg`to reload.
