# README

Asynchronous octopress client for vim

`Octopress [command]`

## Example

```vim
NeoBundleLazy 'alpaca-tc/alpaca_octopress.vim', { 'autoload' : {
      \ 'functions' : 'octopress#complete',
      \ 'commands': {
      \   'name' : 'Octopress',
      \   'complete' : 'customlist,octopress#complete',
      \ }}}

nnoremap <Space>on :Octopress new_post<Space>
let hooks = neobundle#get_hooks('alpaca_octopress.vim')
function! hooks.on_source(bundle) "{{{
  let g:octopress#project_url = expand('~/project/octopress')
  let g:octopress#url = 'http://alpaca-tc.github.io'
  let g:octopress#system#async = 1
  let g:octopress#open = 'vnew'
endfunction"}}}
unlet hooks
```

## Commands

`:Octopress [command] {option}`

```vim
:Octopress new_post title
:Octopress gen_deploy
```
