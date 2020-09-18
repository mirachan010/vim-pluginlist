# What's this?

This plugin shares command-line history between multiple Vims like bash's 'histappend' option.<br/>
It executes `:rviminfo` before entering command-line,
and executes `:wviminfo` after executing an Ex command.

# Goals

1. [x] No configuration in .vimrc. Install & work at once
2. [x] Do not override user's mapping in .vimrc
  * I'm using this setting in my .vimrc (Enter command-line with `'hlsearch'` and `'ignorecase'` enabled)

```viml
nnoremap <silent> <SID>(pre-:) :<C-u>setlocal hlsearch ignorecase<CR>
xnoremap <silent> <SID>(pre-:) :<C-u>setlocal hlsearch ignorecase<CR>gv
nnoremap <script><expr> : '<SID>(pre-:)' . (v:count ==# 0 ? '' : v:count) . ':'
xnoremap <script>       : <SID>(pre-:)gv:
```

3. [x] Correct [count] handling
4. [x] Correct abbreviation expansion
