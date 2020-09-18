# doctest.vim
![Version 0.1.0-dev](https://img.shields.io/badge/version-0.1.0--dev-yellow.svg?style=flat-square)
![Support Vim 8.0.0107 or above](https://img.shields.io/badge/support-Vim%208.0.0107%20or%20above-yellowgreen.svg?style=flat-square)
![Support Neovim 0.2.0 or above](https://img.shields.io/badge/support-Neovim%200.2.0%20or%20above-yellowgreen.svg?style=flat-square)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Doc](https://img.shields.io/badge/doc-%3Ah%20doctest-orange.svg?style=flat-square)](doc/doctest.txt)
[![Powered by vital.vim](https://img.shields.io/badge/powered%20by-vital.vim-80273f.svg?style=flat-square)](https://github.com/vim-jp/vital.vim)

doctest.vim (doctest) run [Python's doctest](https://docs.python.org/3.6/library/doctest.html) asynchronously and record failures into the location-list of the window.

[![asciicast](https://asciinema.org/a/0ettfeNYPTZ5RFy4jA0ft4iD7.png)](https://asciinema.org/a/0ettfeNYPTZ5RFy4jA0ft4iD7)

## Usage

1. Execute `:Doctest` command on a window.
2. Open a location-list with `:lwindow`.
3. Press `p` to see the detail of the failure
