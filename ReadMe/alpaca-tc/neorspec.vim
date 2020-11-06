# neorspec.vim

This is a Rspec runner for Vim.

## Install 

```vim:.vimrc
NeoBundleLazy 'alpaca-tc/neorspec.vim', {
    \ 'depends' : 'tpope/vim-rails',
    \ 'autoload' : {
    \   'commands' : [
    \       'RSpecAll', 'RSpecNearest', 'RSpecRetry',
    \       'RSpecCurrent', 'RSpec'
    \ ] }}
NeoBundleLazy 'tpope/vim-dispatch', { 'autoload' : {
      \ 'commands' : ['Dispatch', 'FocusDispatch', 'Start']
      \ }}
```

## Commands

- `:RSpecAll`
- `:RSpecNearest`
- `:RSpecRetry`
- `:RSpecCurrent`
- `:RSpec`

## Example

```vim:.vimrc
function! s:load_rspec_settings()
  nnoremap <buffer>,cr  :<C-U>RSpecCurrent<CR>
  nnoremap <buffer>,nr :<C-U>RSpecNearest<CR>
  nnoremap <buffer>,lr :<C-U>RSpecRetry<CR>
  nnoremap <buffer>,ar :<C-U>RSpecAll<CR>
  nnoremap <buffer>,r :<C-U>RSpec<Space>
endfunction

augroup RSpecSetting
  autoload!
  autoload BufEnter *.rb call s:load_rspec_settings()
augroup END
```

## Variables

Overwrite `g:neorspec_command` variable to execute a custom command.

Example:

`let g:neorspec_command = "!rspec --drb {spec}"`
`let g:neorspec_command = "Dispatch zeus rspec {spec}"`
