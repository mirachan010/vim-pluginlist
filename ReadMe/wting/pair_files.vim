# pair_files.vim

## Description

pair_files.vim makes it easy to open corresponding tests or source code files
in `yelp-main`.

## Usage

Open up a Python file in `yelp-main`. Enter one of the below commands to open
the corresponding source code or test file.

### Commands

- `:PairFileEdit` edit the corresponding file in the current buffer.
- `:PairFileTabEdit` edit the corresponding file in a new tab.
- `:PairFileSplitEdit` edit the corresponding file in a new split.
- `:PairFileVSplitEdit` edit the corresponding file in a new vertical split.

### Example Keybindings

I find these command aliases useful to add into `.vimrc`:

    commandalias pfe PairFileEdit
    commandalias pfte PairFileTabEdit
    commandalias pfse PairFileSplitEdit
    commandalias pfve PairFileVSplitEdit

## Installation

### Using [Vundle][v]

1. Add `Bundle 'wting/pair_files.vim'` to `~/.vimrc`
2. `vim +BundleInstall +qall`

### Using [Pathogen][p]

1. `cd ~/.vim/bundle`
2. `git clone git://github.com/wting/pair_files.vim.git`

## License

Released under BSD License, full details in `LICENSE` file.

[p]: https://github.com/tpope/vim-pathogen
[v]: https://github.com/gmarik/vundle
