# purge_vim_undodir.vim

Inspired by https://blog.debiania.in.ua/posts/2012-07-31-purging-vim-undodir.html<br>
Implement it with pure vimscript for multiple platform support.

vim `persistent-undo` feature is very useful, but it will always keep the undofile in undodir,
even the original file was already deleted.<br>
This plugin will purge these undofile for you. :smile:

Tested in vim/neovim on Windows/Linux/macOS

## Usage

This plugin will running on `VimLeave`.<br>
You can also run it manually by `:call purge_undodir#purge()`
