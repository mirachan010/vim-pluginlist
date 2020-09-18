vim-pybreak
===========

Vim function for toggling pdb.set\_trace statement at cursor position

installation
------------
Prefered way of installing this plugin (as with any other script) is by 
installing it as a git submodule, and loading it with pathogen (for pathogen
installation instructions, please refer to https://github.com/tpope/vim-pathogen
or http://www.vim.org/scripts/script.php?script\_id=2332). When you have
pathogen installed, installing pybreak is as simple as:

    git clone git://github.com/nthorne/vim-pybreak.git bundle/pybreak

usage
-----
* \<localleader\>d - inserts a set\_trace statement after the cursor position if
  no statements (as inserted by pybreak) are found on the current line. _If_,
  however, any set\_trace statements are found at the current line, they are
  removed, and no further set\_trace statements are inserted.
* \<localleader\>D - as \<localleader\>d, with the minor difference that this
  keymapping inserts the set\_trace statement _at_ the cursor position.
* \<localleader\>da - removes _all_ set\_trace statements in the active buffer
* \<localleader\>de - toggles set\_trace (see \<localleader\>d), writes the
  buffer to disk, and then executes the file with the python interpreter.

license
-------
Copyright (C) 2012 Niklas Thörne. This plugin is distributed under the
GNU General Public License version 3.
