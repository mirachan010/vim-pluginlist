Simple Vim plug-in that goes up on directory structures and autosources a Vimscript file.

Major application: automatically source per-project Vim configuration from anywhere inside the source tree.

Important configurations include:

- custom indentation
- keybindings

# Install

If you are using Vundle (and you should) add this to your `~/.vimrc`:

    Bundle 'cirosantilli/sovim'

and then use the Vim command:

    :BundleInstall

# Usage

In you `.vimrc`:

    let g:sovim_basename = 'so.vim'

The directory structure:

    /a/so.vim
    /a/fa
    /a/b/so.vim
    /a/b/fb
    /a/b/c/fc

Now, whenever you open:

- `fa`, `/a/so.vim` gets sourced
- `fb`, `/a/b/so.vim` gets sourced
- `fc`, `/a/b/so.vim` gets sourced

In general the script works like:

- look in current directory for a file with basename `g:sovim_basename`
- if not found, look for it in parent directory.
- if not found, ...

# Configuration

- `g:sovim_basename`: basename to search for. Default value: `so.vim`

# Sample so.vim

This is a template `so.vim` showing the kinds of things you will typically want to do:

    if expand('%:e') =~ '\(c\|cpp\)'
        " This project uses 2 spaces instead of my default 4 for C and C++ files
        set shiftwidth=2
    elseif &filetype == 'python'
        " This project uses tabs for python files:
        set noexpandtab
        set tabstop=4
    endif
    " This project has a `make test` target at the root:
    nnoremap <F6> !cd `git rev-parse --show-toplevel` && make test<CR>
