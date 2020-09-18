GuessIndent Plugin
------------------

This plugin is based on the [DetectIndent plugin by Ciaran McCreesh][1].
Many thanks to him for inspiration and code.

[1]: https://github.com/ciaranm/detectindent

Usage:
------

    :GuessIndent

The :GuessIndent command tries to determine whether the active file
uses tabs or spaces for indentation as a convention. If the file
appers to use spaces for indentation, the plugin will try to
intelligently set the 'shiftwidth' and 'softtabstop' options.

You can run this command automatically every time a file is loaded.
To do that, include the following in your `~/.vimrc` file:

    autocmd BufReadPost * :GuessIndent

Customizing:
------------

If at least 3/4 of the lines in the active file appear to use spaces
for indentation, then `'expandtab'` will be set. If at least 3/4 of
the lines in the active file use tabs for indentation, `'noexpandtab'`
will be set. If no tabs or spaces are used (for example if the file
is new) then the command does nothing. If there is a roughly even mix
then the file is considered to be ambiguous.

If the file sometimes uses spaces and sometimes uses tabs for
indentation ambiguously, spaces are arbitrarily chosen as the
indentation method and `'expandtab'` is set. If you prefer to use
tabs in this case and set `'noexpandtab'`, include the following
in your `~/.vimrc` file:

    let g:guessindent_prefer_tabs = 1

For performance reasons, `:GuessIndent` reads a limited number of
lines from the active file. The default is currently to read a
maximum of 1024 lines. To change this maximum, include the
following in your `~/.vimrc` file:

    let g:guessindent_max_lines_to_analyse = 2048

License
-------

This plugin is distributed under the same terms as vim istelf.
Contributions are welcome.
