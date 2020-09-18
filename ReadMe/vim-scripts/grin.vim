# grin.vim #

This plugin is a front for [grin](https://pypi.python.org/pypi/grin), the python
version of [Ack](http://search.cpan.org/~petdance/ack/ack).
Grin can be used as a replacement for _grep_, it will allow you to run grin from
vim, get the results in a split window and open them right in the editor.

## Installation ##


### Grin

Install grin at OS level, user levle or even on a virtualenv:

Global install

    $ sudo pip install grin

User install:

    $ pip install --user grin

In a Virtualenv:
    $ mkvirtualenv grin
    $ workon grin
    $ pip install grin

You can specify a custom grin name and path in your .vimrc like so:

    let g:grinprg="<custom-grin-path> --emacs"

### The Plugin

If you don't have a preferred installation method, I recommend installing
[pathogen.vim](https://github.com/tpope/vim-pathogen), and then simply copy and
paste:

cd ~/.vim/bundle
git clone git://github.com/santiycr/grin.vim.git

Once help tags have been generated, you can view the manual with :help fugitive.

## Usage ##

    :Grin [options] {pattern} [{directory}]

Search recursively in {directory} (which defaults to the current project's root)
for the {pattern}.

Files containing the search term will be listed in the split window, along with
the line number of the occurrence, once for each occurrence.  [Enter] on a line
in this window will open the file, and place the cursor on the matching line.

Just like where you use :grep, :grepadd, :lgrep, and :lgrepadd, you can use
`:Grin`, `:GrinAdd`, `:LGrin`, and `:LGrinAdd` respectively. (See `doc/grin.txt`,
or install and `:h Grin` for more information.)

### Keyboard Shortcuts ###

In the quickfix window, you can use:

    o    to open (same as enter)
    go   to preview file (open but maintain focus on grin.vim results)
    t    to open in new tab
    T    to open in new tab silently
    h    to open in horizontal split
    H    to open in horizontal split silently
    v    to open in vertical split
    gv   to open in vertical split silently
    q    to close the quickfix window


### Acknowledgements ###

This plugin is a blatant modification of ack.vim by Antoine Imbert
(antoine.imbert+ackvim@gmail.com), Miles Sterrett (https://github.com/mileszs)
and others.
Checkout their plugin if you're interested in ack instead of grin:
https://github.com/mileszs/ack.vim

This plugin uses the setcwd function, taken from ctrlP docs:
https://github.com/kien/ctrlp.vim/blob/master/doc/ctrlp.txt
