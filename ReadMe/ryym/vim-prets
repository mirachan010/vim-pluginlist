# Vim Prets

[prettier]: https://prettier.io/

Prets is a small Vim plugin for fast format-on-save by [Prettier][prettier].

## Problem

There are some plugins already to do format-on-save by Prettier:

[vim-ale]: https://github.com/dense-analysis/ale
[prettier-vscode]: https://github.com/prettier/prettier-vscode
[vscode]: https://code.visualstudio.com/

- [vim-prettier](https://github.com/prettier/vim-prettier)
- [ALE][vim-ale]'s default Prettier fixer

but I feel they are too slow, especially compared to the format-on-save on [VSCode][vscode] by [prettier-vscode][prettier-vscode].
A noticeable lag on every save is annoying even if the formatting is asynchronous. That's why I created this Vim plugin. Prets provides a faster formatting and can be integrated with [ALE][vim-ale].

## Why faster?

[vim-channel]: https://vimhelp.org/channel.txt.html

The Vim plugins listed above run Prettier command each time on save.
Prets instead launches a server in background beforehand and communicate with it via Vim's [channel][vim-channel] to format your source code.
This makes formatting faster because there is no cost to launch Prettier on save.
The server starts and stops automatically when you edit a file and when the file is closed, respectively.

## Installation

[vim-plug]: https://github.com/junegunn/vim-plug

1. Clone this repository and add it to your `runtimepath`.
If you use [vim-plug][vim-plug], add the line `Plug 'ryym/vim-prets'`.
1. Run `npm install && npm run build` in the `server` directory.

(The build process may be automated in future)

Note that Windows is not supported yet.

## Usage

Currently the only way to use Prets is to use it as an ALE fixer.

Steps:

1. Enable Prets for file types you want to format by `prets#enable_for`.
1. Register the `prets#ale` function as a ALE fixer. 

Example:

```vim
" 1. Enable Prets.
call prets#enable_for([
\   'javascript',
\   'typescript',
\   'scss',
\ ])

" 2. Register fixers.
let g:ale_fixers.javascript = [function('prets#ale')]
let g:ale_fixers.typescript = [function('prets#ale')]
let g:ale_fixers.scss = [function('prets#ale')]
```

## Trouble shooting

There could be a case that the Prets background server keeps running accidentally after you quits Vim.
In that case please check a file named `.alive` in the root directory of the repository. 
This file is created when the server starts and its content is a process ID of the server.
So you can check that file to inspect the server is alive or not, or to kill the server process.
If the file does not exist, server should be stopped.
