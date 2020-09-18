vim-localcomplete
=================

Combinable completion functions for Vim.

This repository contains functions that can be used in combination with a patched
[AutoComplPop](https://github.com/dirkwallenstein/vim-autocomplpop) to combine the results of
multiple completion sources into one PopUp Menu.  One use case is to
augment `RopeOmni` from [python-mode](https://github.com/klen/python-mode) with
completions for a small area around the current line or the whole current buffer.
There is some example code included for this use case.

To see how these two plugins can be connected take a look at this
[blog post](http://vertuxeltes.blogspot.de/2013/05/powerful-insert-mode-completion.html)

There are two files of interest:

localcomplete.vim
-----------------
Here you find three completion functions:

    localcomplete#localMatches

It searches through the configured area of the current buffer only.  All of the
configuration in the first section of the source file applies to it.  Please
read through that section.  There is no documentation file.

    localcomplete#allBufferMatches

This function searches through all buffers.  It respects the case and
keyword-char configuration.

    localcomplete#dictMatches

Search the file configured in Vim's `'dictionary'` setting for matches.  It can
optionally search for matches case-insensitively.  The dictionary has to be
utf-8 encoded.

All three functions can have individual minimum leading word lengths configured
after which they start to produce results.  This makes only sense in
combination with ACP.

In addition, all three functions mimic Vim's `'infercase'` behavior.

combinerEXP.vim
---------------
This is a pretty rough and hardcoded module for demonstration purposes.  Please
read the mentioned blog post for more.

Testing
-------
To test, execute `nosetests` from the root directory. For example:

    $> nosetests pylibs.localcomplete_tests

It requires [mock](https://pypi.python.org/pypi/mock)

Installation
------------
On how to add this plug-in, I'd like to refer you to
[Vundle](https://github.com/gmarik/vundle) or
[Pathogen](https://github.com/tpope/vim-pathogen).
