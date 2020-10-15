# vim-textimer

Text based timer vim plugin heaviliy inspired by [Efforless](https://www.textimer.app).

![Screen shot](screenshot.png)

## Try online demo

 * [Demo](https://rhysd.github.io/vim.wasm/?arg=%2Fsample.textimer&dir=%2Fusr%2Flocal%2Fshare%2Fvim%2Fftdetect&file=%2Fsample.textimer%3Dhttps%3A%2F%2Fraw.githubusercontent.com%2Fliquidz%2Fvim-textimer%2Fmaster%2Fsample.textimer&file=%2Fusr%2Flocal%2Fshare%2Fvim%2Fautoload%2Ftextimer.vim%3Dhttps%3A%2F%2Fraw.githubusercontent.com%2Fliquidz%2Fvim-textimer%2Fmaster%2Fautoload%2Ftextimer.vim&file=%2Fusr%2Flocal%2Fshare%2Fvim%2Fftdetect%2Ftextimer.vim%3Dhttps%3A%2F%2Fraw.githubusercontent.com%2Fliquidz%2Fvim-textimer%2Fmaster%2Fftdetect%2Ftextimer.vim&file=%2Fusr%2Flocal%2Fshare%2Fvim%2Fftplugin%2Ftextimer.vim%3Dhttps%3A%2F%2Fraw.githubusercontent.com%2Fliquidz%2Fvim-textimer%2Fmaster%2Fftplugin%2Ftextimer.vim&file=%2Fusr%2Flocal%2Fshare%2Fvim%2Fsyntax%2Ftextimer.vim%3Dhttps%3A%2F%2Fraw.githubusercontent.com%2Fliquidz%2Fvim-textimer%2Fmaster%2Fsyntax%2Ftextimer.vim%) powered by [rhysd/vim.wasm](https://github.com/rhysd/vim.wasm).
   * Please access from desktop Chrome, Firefox, Safari or Chromium based browsers

## Requirements

 * Vim8.1 with [`+timer`](https://vim-jp.org/vimdoc-en/various.html#+timers) and [popup](https://vim-jp.org/vimdoc-en/popup.html).
   * Neovim is not supported currently.

## Installation

 * vim-plug
```
Plug 'liquidz/vim-textimer'
```

## Usage

 * Open `*.textimer` file
   * e.g. `$ vim your_project.textimer`
 * Write text something like:
   * `First Task 30`
     * the last word `30` means `30 minutes`
     * vim-textimer will start timer by
       * [CursorHoldI](https://vim-jp.org/vimdoc-en/autocmd.html#CursorHoldI) auto command.
         * depends on [updatetime](https://vim-jp.org/vimdoc-en/options.html#'updatetime') option.
       * Type `<CR><CR>` in normal mode, and open textimer menu.
       * `:TextimerStart` command.
   * If `g:textimer#started_command` is defined, specified command will be executed.

 * When timer is finished, vim-textimer echos the message.
   * If `g:textimer#finished_command` is defined, specified command will be executed.
     * e.g. To notify on macOS
```
let g:textimer#finished_command = 'osascript'
let g:textimer#finished_exec = '%c -e "display notification \"textimer\" with title \"%s\""'
```

## License

Copyright (c) 2019-2020 [Iizuka Masashi](http://twitter.com/uochan)

Distributed under the MIT License.
