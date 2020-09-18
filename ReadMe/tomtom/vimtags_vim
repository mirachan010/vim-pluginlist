The vimtags plugin creates and maintains tags files with pure vimscript. No 
external helper app like ctags and friends is involved. Of course, this is not 
a replacement for ctags but it allows users to work without ctags for languages 
that aren't yet supported by ctags and for which users would have to define 
their own regexp patterns. It is also useful in settings where you cannot 
simply install ctags.

NOTE: vimtags will only update tags files created by vimtags. It won't modify 
tags files created by other programs like ctags.

Examples: >

    " Create a tags file with `:Vimtags`
    Vimtags ~/.vim/pack/tags ~/.vim/pack/**/*.vim

    " Create tags patterns for a new language with `:Vimtagsfiletype` and 
    " `:Vimtagsdef`
    Vimtagsfiletype R *.R *.r
    Vimtagsdef R /^\s*"?\([.A-Za-z][.A-Za-z0-9_]*\)"?\s*\<-\s*function/ f

    " Read your ctags config with `:Vimtagsctagsconfig` (see also 
    " `:Vimtagsctags`)
    Vimtagsctagsconfig ~/.ctags

If a file is connected to a tags file created by `:Vimtags`, the tags file will 
be automatically updated if necessary when saving the file.

Out of the box, vimtags comes with support for the following languages:

- latex
- markdown
- R
- vimscript
- viki ([vimscript #5551](http://www.vim.org/scripts/script.php?script_id=5551) and [vimscript #861](http://www.vim.org/scripts/script.php?script_id=861))

Experimental, hardly tested:

- clojure
- coffee
- haxe
- javascript
- kotlin
- scala


-----------------------------------------------------------------------

# Install

Either use the zip archive:

- Download the zip archive
- Extract it to `~/.vim/pack/tml/start/vimtags_vim`

or install from github:

- Start a terminal
- Change the working directory to `~/.vim/pack/tml/start/`
- Type: `git clone https://github.com/tomtom/vimtags_vim`

or use a VIM plugin manager like vim-plug, vundle, dein.vim, VAM etc.

NOTE: On Windows, ~/.vim might be ~/vimfiles. Please see 'runtimepath' 
for details.

Some features require the tlib_vim plugin ([vimscript #1863](http://www.vim.org/scripts/script.php?script_id=1863)) to be installed:
https://github.com/tomtom/tlib_vim

Also available via git: http://github.com/tomtom/vimtags_vim




Dependencies:
<dl>
<dt>tlib (>= 1.27)</dt><dd>http://github.com/tomtom/tlib_vim</dd>
</dl>

License: GPLv3 or later


