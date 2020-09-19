Overview
--------

`ucompleteme` is a Vim plugin for insert-mode completion.  It combines the
results of omni-completion with its own "proximity" completion function.

`ucompleteme` attempts to provide completion options intelligently, so the user
doesn't have to think about what kind of code completion to use
([omni-completion](http://vimdoc.sourceforge.net/htmldoc/insert.html#i_CTRL-X_CTRL-O),
[current file completion](http://vimdoc.sourceforge.net/htmldoc/insert.html#i_CTRL-X_CTRL-N),
etc.).  Plugins like
[SuperTab](http://www.vim.org/scripts/script.php?script_id=1643) provide a
means to easily switch between different completion methods, but they aren't as
opinionated about building the list of matches for the user.

The philosophy behind `ucompleteme` is that instead of having to think about
which completion type is best, the completion funciton should make an educated
guess by first running the omni-completion function (where available), then
finding matches within the current buffer, then other buffers of the same
filetype, and finally the remaining buffers.


Details
-------

`ucompleteme` provides a [user-defined completion function](http://vimdoc.sourceforge.net/htmldoc/insert.html#i_CTRL-X_CTRL-U).
By default it re-maps `<tab>` in insert mode to use this function.  If an
omnifuc is defined, `ucompletme` starts by populating the list with those
results first and giving the user a chance to interact.  After that it will run
its own "proximity" completion function that searches each line of a buffer
progressively further from the cursor.  The proximity search is run on the
current buffer, and then the other buffers of the same filetype, and finally
the remaining open buffers.


Options
-------

 - **g:ucompleteme\_map\_tab**: if this is set to 1, `ucompleteme` will re-map
   `<tab>` in insert mode

 - **g:max\_lines\_for\_omnifunc**: omni-completion functions can be slow for
   large files.  this determines how large a file can be before `ucompleteme`
   will not skip using omni-completion and just use keyword completion.


Installation
------------

Put the "ucompleteme.vim" file in your [Vim
Runtimepath](http://www.vim.org/scripts/script.php?script_id=1643)'s autoload
direcory:

 - On Linux/Mac OS X: `~/.vim/autoload`

 - On Windows: `$HOME/vimfiles/autoload`

If you're using a Vim package manager like [Tim Pope](http://tpo.pe/)'s
[pathogen](http://www.vim.org/scripts/script.php?script_id=2332 ), then
you should be able to just clone this repository into the "bundles" directory.

Finally, add the following to your
[.vimrc](http://vimdoc.sourceforge.net/htmldoc/starting.html#.vimrc ):

	call ucompleteme#Setup()

