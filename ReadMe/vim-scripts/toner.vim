toner.vim
========================================================================

**Toner** is a plugin for interactively and visually toning vim highlight
colors.


## Install ##

The nicest way is to use the excellent
[Pathogen](http://www.vim.org/scripts/script.php?script_id=2332) plugin, and
just clone the Toner repository while standing in your <~/.vim/bundle/>.

To have the docs indexed, then run:

    :helptags ~/.vim/bundle/vim-toner/doc/


## Usage ##

Load up some code with nice syntax highlighting. Set up default mappings with:

    :TonerMap + -

Then adjust a current or newly made colorscheme interactively, using e.g.:

    :Toner . h          " affect color group under cursor, operate on hue
    :Toner l 1 fg bg    " on light by 1, affect both fore- and background
    :Toner * s 10 bg    " *all colors*, saturation by 10, only background
    :Toner!             " reset Toner state to ". h fg 2"

### Tips###

To get an overview of the available highlight groups for Vim structures and
various syntaxes, do:

    :help group-name

in one window, and:

    :so $VIMRUNTIME/syntax/hitest.vim

in another (also available in the menu (and thus via `:emenu Syntax.Highlight\
test`); see `:help hitest.vim`).

###Important about Float###

Floating point numbers in Vim can bug out if your locale doesn't
use "." as decimal mark. If you see this:

    E806: using Float as a String

, either do this in your running vim instance:

    :language en_US.UTF-8

(any locale using '.' as decimal mark should do), or set the locale in the
terminal, e.g:

    $ LC_CYPE=en_US.UTF-8 gvim

Using MacVim, it seems just launching with the `mvim` script is enough.

*(Note: this is said to have been fixed in Patch 7.2.318, but there still are
problems in recent 7.3. Really must research and report..)*


## Documentation ##

I suggest you read some or all of:

    :help toner.txt

to get the gist of it all.


## Credits ##

The HSL and hue rotation code is from huerotation.vim (Vim Script #2283) by
Yukihiro Nakadaira. See <http://www.vim.org/scripts/script.php?script_id=2283>
(placed in the public domain). Many thanks for this!

<!--
 vim:tw=78:fo=tcq2:ft=markdown:
-->
