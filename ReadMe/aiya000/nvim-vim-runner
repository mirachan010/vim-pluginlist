# nvim-vim-runner

## What is this ?
NeoVim can run Vim on NeoVim uses :terminal .  
This helps it.


## Available commands

- :VimRun {args}
    - Run `:terminal vim {args}`
    - `VimRun foo/file.txt` to run Vim on NeoVim and open foo/file.txt in Vim
- :VimRunTab {args}
    - Run `:tabnew | terminal vim {args}`
- :VimRunDo {args}
    - Execute `:terminal vim -c {args}`


## What can this be used for ?
An example is [**Here**](http://aiya000.github.io/posts/2016-12-17-vim_as_vm_on_neovim.html)
for [aref-web.vim](https://github.com/aiya000/aref-web.vim) .

[aref-web.vim](https://github.com/aiya000/aref-web.vim) works on Vim's async API,  
but it doesn't work on NeoVim's async API.

Let's do `VimRunDo` it :D


## Require

- executable vim binary


## Expected bugs

- Vim throws the exception about NeoVim when Vim was opened
    - This depends NeoVim currently spec
