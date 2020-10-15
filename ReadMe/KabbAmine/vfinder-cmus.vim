# vfinder-cmus

![Badge version](https://img.shields.io/badge/version-0.1.0-blue.svg?style=flat-square "Badge for version")
![License version](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square "Badge for license")

A [cmus](https://cmus.github.io/) source for [vfinder.vim](https://github.com/kabbamine/vfinder.vim).

![Demo of vfinder-cmus](.img/vfinder-cmus_demo.gif "Demo of vfinder-cmus")

# Installation

This plugin needs [vfinder.vim](https://github.com/kabbamine/vfinder.vim) to be installed, e.g. with [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'kabbamine/vfinder.vim'
Plug 'kabbamine/vfinder-cmus.vim'
```

# Usage

```viml
call vfinder#i('cmus')
```

# Actions & mappings

|  modes  | action         | description                             | default value |
| :-----: | -------------- | --------------------------------------- | :-----------: |
| `i`/`n` | `play`         | Play selected file                      | `<CR>`/`<CR>` |
| `i`/`n` | `queue`        | Add selected file to the queue list     |  `<C-s>`/`s`  |
| `i`/`n` | `pre_queue`    | Prepend selected file to the queue list |  `<C-v>`/`v`  |
| `i`/`n` | `show_current` | Show the current played song in cmus    |  `<C-o>`/`o`  |

# License

MIT
