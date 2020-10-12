Cuculus.vim
===

`%` for Ruby.

Requirements
---


* if_ruby
* parser gem

Configuration
---

```vim
" Load Cuculus.vim with a plugin manager
NeoBundle 'pocke/cuculus.vim'

" Define a keymap
autocmd FileType ruby nnoremap <silent><buffer> % :<C-u>call cuculus#jump()<CR>
```

Advanced Usage: Display pair code with popup window

![screenshot](https://user-images.githubusercontent.com/4361134/58955110-fafa4400-87d5-11e9-804f-640c10fe0aa2.gif)

```vim
autocmd CursorMoved * call cuculus#display_pair_to_popup()
```
