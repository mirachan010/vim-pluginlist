vim-cpp-typecheck
=================

This is a plugin for the [vim](http://www.vim.org/) editor for the command [cpp-typecheck](https://github.com/dan-t/cpp-typecheck).

Installation
------------

The recommended way is to use [pathogen.vim](<https://github.com/tpope/vim-pathogen/>):

    $> cd ~/.vim/bundle
    $> git clone https://github.com/dan-t/vim-cpp-typecheck

Vim Command
-----------

The plugin supplies the command `CppTypecheckFile`.

Type checking the C++ source file of the current window:

    :CppTypecheckFile '%:p'

This will work if the clang compilation database `compile_commands.json` is
reachable through the directory of the source file upwards the directory tree.

If this isn't the case the database has also to be given:

    :CppTypecheckFile '%:p' path_to/compile_commands.json

It's also possible to use an other compiler for the type checking than the one defined
in the database, as long as the compiler arguments are compatible (which is the case for gcc and clang):

    :CppTypecheckFile --compiler clang '%:p' path_to/compile_commands.json

The call of `CppTypecheckFile` will populate the location list of the current window with the type
check errors - if any are available. The location list can be opened by calling `:lwindow`.

Configuration
-------------

For type checking the current C++ source file with a database a shortcut like this could be put into `~/.vim/after/ftplugin/cpp.vim`:

    nmap <silent> <F1> :silent update <bar> silent CppTypecheckFile '%:p' path_to/compile_commands.json<CR>

This will by pressing `F1` write all changed files and call `CppTypecheckFile` with the absolute path of the
C++ source file of the current window and the database `path_to/compile_commands.json`.

If the location list should be automatically opened/closed in the case of errors the following `autocmd`
can be added to `~/.vimrc`:

    autocmd QuickFixCmdPost l* nested lwindow
