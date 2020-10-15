# vim-lining

Small and cute status line for [Vim](http://www.vim.org) and
[NeoVim](https://neovim.io).

![Screenshot](/_misc/screenshot2.png)

(The screenshot uses the [elrond
theme](https://github.com/aperezdc/vim-elrond).)

## Features

* Automatically sets the `laststatus=2` and `showmode` options for you. The
  latter can be disabled by setting `g:lining#showmode=0`.
* Possible, the smallest nice-looking status line which does not require you
  to install patched fonts.
* Visual paste mode indicator (not shown in screenshot).
* If you have [Fugitive](https://github.com/tpope/vim-fugitive) installed, it
  will be used to show information on Git repositories.
* Alternate status line for certain kinds of buffer (for now, this covers help
  buffers and the Netrw file browser).


## Customization

The built-in items cannot be removed, but it is possible to add new ones. For
example, this will append one element to the *right* of the left part of the
status line which shows the status of the
[Pencil](https://github.com/reedes/vim-pencil) plugin:

```vim
call lining#left("%{empty(PencilMode()) ? 'none' : PencilMode()}", 'Item')
```

or, to prepend to the *left* of the right part of the status line:

```vim
call lining#right("%{empty(PencilMode()) ? 'none' : PencilMode()}", 'Item')
```

(There are also functions to add items to the alternate status line used e.g.
for help buffers and the Netrw file browser: `lining#altleft()` and
`lining#altright()`.)


The first argument is either a `statusline` format specifier (like in the
example above), or a `Dict` with a `format` function attribute. The item
above could have been written as:

```vim
let s:pencil_item = {}
function s:pencil_item.format(item, active)
    return active ? PencilMode() : ''
endfunction
call lining#left(s:pencil_item, 'Item')
```

The arguments passed to the `.format()` function are the `Dict` item itself,
and a boolean flag indicating whether the status bar being formatted belongs
to an active buffer.

Lining automatically adds spaces around non-empty items. To prevent this
behaviour (and manage the spacing yourself), you need to use this second form
of specifying items, and add a `nospace` attribute to the `Dict`:

```vim
let s:pencil_item = { 'nospace': 1 }
" ...
```

The second argument to `lining#left()` is the item kind, and is optional—if
omitted, `'Item'` is used by default. This kind determines the colouring of
the element. See [#theming](theming) below for more details.


## Theming

Theming is done via highlight groups. Note that *by default colors for Lining
are not defined*, which means that your status line will be use the plain
colors defined by your theme for `StatusLine` and `StatusLineNC`.

The names of the highlight groups are the same as the names of the item kinds
with the `Lining` prefix added:

* `StatusLine` and `StatusLineNC`, as used by the default status line.
* `LiningBufName`: Name of the file in the buffer.
* `LiningWarn`: Warning flag item.
* `LiningError`: Error flag item.
* `LiningItem`: Any other item in the status line.
* `LiningVcsInfo`: Version control information.

For an example on how to theme Lining using these, you can check the [elrond
theme](https://github.com/aperezdc/vim-elrond).


## Installation

### Using [Plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'aperezdc/vim-lining'` to your `vimrc`.

2. Run `vim +PlugInstall +qall`.

### Using [NeoBundle](https://github.com/Shougo/neobundle.vim)

1. Add `NeoBundle 'aperezdc/vim-lining'` to your `vimrc`.

### Using [Vundle](https://github.com/gmarik/vundle)

1. Add `Plugin 'aperezdc/vim-lining'` to your `vimrc`.

2. Run `vim +PluginInstall +qall'`.

### Using [Pathogen](https://github.com/tpope/vim-pathogen)

Execute the following commands in a terminal:

```sh
cd ~/.vim/bundle
git clone https://github.com/aperezdc/vim-lining
```
