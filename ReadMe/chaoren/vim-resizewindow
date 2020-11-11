More intuitive way to resize windows in Vim
===========================================

[![Build Status](https://travis-ci.org/chaoren/vim-resizewindow.svg?branch=master)](https://travis-ci.org/chaoren/vim-resizewindow)

This plugin provides direction based resizing of windows.

Using `<C-W>+`, `<C-W>-`, `<C-W><`, and `<C-W>>` to resize windows can be
disorienting since `<C-W><` and `<C-W>>` look like they should always be moving
the window divider left and right, respectively, but they don't if you're in the
right most window.

Customization
=============

The default mappings are `<C-W><C-H>`, `<C-W><C-J>`, `<C-W><C-K>`, and
`<C-W><C-L>`.

Use `g:resizewindow_mappings` to replace the default mappings.  
E.g.,
```
let g:resizewindow_mappings = {
\ 'h' : '<C-W><',
\ 'j' : '<C-W>+',
\ 'k' : '<C-W>-',
\ 'l' : '<C-W>>'
\ }
```
Unspecified entries will still use the default mappings.  
Set the value to an empty string to disable the mapping.
