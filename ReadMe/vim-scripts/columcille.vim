
Columcille: simple split window management in Vim
=================================================

Columcille allows a Vim user to manage split windows using simple `:Columns` and `:Rows` commands.

Installation
------------

Either

* download the files as a ZIP; extract that and place the files in each directory under their matching counterparts under `~/.vim` (so for example, files under [`doc/`](doc) here would go under `~/.vim/doc/`), **or**
* install using [Vundle](https://github.com/gmarik/vundle): add `Bundle 'fifthposition/columcille' to the bundle list in your `~/.vimrc`, start Vim, and run `:BundleInstall` **(highly recommended)**.

Usage
-----

Detailed&#8230; details are in the help file ([columcille.txt](doc/columcille.txt)).

Basic use:

1. `:Columns <number>`: divide the main window into `<number>` top-level vertical split windows (an example: `:Columns 3`)
2. `:Rows <number>`: divide the current top-level vertical split window (or the main window, if there are not vertical split windows open) into `<number>` horizontal split windows (an example: `:Rows 4`)

That&#8217;s mostly it
----------------------

Enjoy! (No, that is not a suggestion. *Enjoy, I say!*)

