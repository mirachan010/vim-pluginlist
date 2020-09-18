#gf-ext.vim

Extend vim's `gf` shortcut to open files with external programs, based on the
file's extension.  This is useful when you want to view or edit files which are
referenced in source code but aren't necessarily source text files themselves;
for example `<img>` tags in HTML, source asset files, and so on.

Installation
------------

You can install `gf-ext.vim` in the usual way, by copying the contents of the
`plugin` and `doc` directories into the equivalent directories inside `.vim`.

Alternatively, if you manage your plugins using [pathogen.vim][1], you can
simply clone into the `bundle` directory:

    cd ~/.vim/bundle
    git clone git://github.com/dpwright/gf-ext

Or, using submodules:

    cd ~/.vim
    git submodule add git://github.com/dpwright/gf-ext bundle/gf-ext

Usage
-----

gf-ext works by allowing you to define a handler for files matching a certain
pattern.  If no pattern matches, it falls back to the default `gf` command.

To use the plugin, extract it to your vim plugins directory, and set up the
desired handlers using |gf_ext#add_handler|.  For example, to open .jpg files
with firefox, and .avi files with vlc, you could use:

```VimL
  call gf_ext#add_handler('\.jpg$', "!firefox -new-window")
  call gf_ext#add_handler('\.avi$', "!cvlc")
```

For full documentation, install the plugin and run `:help gf-ext` from within
Vim.

Licence
-------

gf-ext is distributed under the same terms as Vim itself.  Run `:license` from
within Vim for more information.

[1]: https://github.com/tpope/vim-pathogen
