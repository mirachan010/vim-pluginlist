# 👓 nerdfont.vim

![Support Vim 8.1 or above](https://img.shields.io/badge/support-Vim%208.1%20or%20above-yellowgreen.svg)
![Support Neovim 0.4 or above](https://img.shields.io/badge/support-Neovim%200.4%20or%20above-yellowgreen.svg)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Doc](https://img.shields.io/badge/doc-%3Ah%20nerdfont-orange.svg)](doc/nerdfont.txt)

[![reviewdog](https://github.com/lambdalisue/nerdfont.vim/workflows/reviewdog/badge.svg)](https://github.com/lambdalisue/nerdfont.vim/actions?query=workflow%3Areviewdog)
[![vim](https://github.com/lambdalisue/nerdfont.vim/workflows/vim/badge.svg)](https://github.com/lambdalisue/nerdfont.vim/actions?query=workflow%3Avim)
[![neovim](https://github.com/lambdalisue/nerdfont.vim/workflows/neovim/badge.svg)](https://github.com/lambdalisue/nerdfont.vim/actions?query=workflow%3Aneovim)

A simplified version of [vim-devicons][] which does NOT provide any 3rd party integrations in itself.
In otherwords, it is a fundemental plugin to handle [Nerd Fonts][] from Vim.

[vim-devicons]: https://github.com/ryanoasis/vim-devicons
[nerd fonts]: https://github.com/ryanoasis/nerd-fonts

![](https://user-images.githubusercontent.com/546312/88701008-6c1c5980-d144-11ea-8d6b-d4f4290274a6.png)
*With fern.vim + fern-renderer-nerdfont.vim. All glyphs above were powered by this plugin*

## Usage

First of all, make sure one of [Nerd Fonts][] is used in your Vim.
After that, use `nerdfont#find()` function to find a glyph for the current filetype like:

```vim
echo nerdfont#find()

```

Or specify a path to find a glyph for a particular path like:

```vim
echo nerdfont#find(expand('~/.vimrc'))

echo nerdfont#find(expand('~/.vim'))

```

Above automatically check if the specified path is directory.
To avoid that, specify the second argument to tell if the path is directory or not like:

```vim
echo nerdfont#find(expand('~/.vimrc'), 0)

echo nerdfont#find(expand('~/.vimrc'), 1)

```

See `:help nerdfont-function` to find glyphs for directory, fileformat, platform, etc.

## Contribution

If you would like to add new glyph/filetype supports, see the following files

| If                                                  | Where                                                                            |
| --------------------------------------------------- | -------------------------------------------------------------------------------- |
| Want to add new extension (e.g. `.js`)              | [`autoload/nerdfont/path/extension.vim`](./autoload/nerdfont/path/extension.vim) |
| Want to add new exact name (e.g. `Makefile`)        | [`autoload/nerdfont/path/basename.vim`](./autoload/nerdfont/path/basename.vim)   |
| Want to add new complex pattern (e.g. `.*/bin/.*$`) | [`autoload/nerdfont/path/pattern.vim`](./autoload/nerdfont/path/pattern.vim)     |

## Integrations

| Name                           | Description                                                          |
| ------------------------------ | -------------------------------------------------------------------- |
| [glyph-palette.vim][]          | An universal palette for glyphs to highlight nicely                  |
| [fern-renderer-nerdfont.vim][] | A [fern.vim][] plugin which use nerdfont.vim to provide fancy glyphs |

[glyph-palette.vim]: https://github.com/lambdalisue/glyph-palette.vim
[fern-renderer-nerdfont.vim]: https://github.com/lambdalisue/fern-renderer-nerdfont.vim
[fern.vim]: https://github.com/lambdalisue/fern.vim

## License

The glyph mappings has copied from [vim-devicons][] thus the part follow the license of [vim-devicons][] ([LICENSE.vim-devicons](./LICENSE.vim-devicon)).
Other parts are MIT license explained in [LICENSE](./LICENSE).
