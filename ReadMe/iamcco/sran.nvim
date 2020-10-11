<p align="center">
  <img src="https://user-images.githubusercontent.com/5492542/55129701-0e908b00-5153-11e9-96e7-2bd86d9c591d.png" />
  <p align="center">
      Simple Request And Notification
  </p>
</p>

> *The easiest way to write remote plugin for (neo)vim by javascript*

Using neovim's [node-client](https://github.com/neovim/node-client) you can
write remote plugin really easy through javascript.  But most of time i just
want to run an async function to fetch some data or other stuff, and sran.nvim
is for the situation and also support vim by
[vim-node-rpc](https://github.com/neoclide/vim-node-rpc).

### Install

> It works on vim >= 8.1 and neovim

```viml
" use pre build
Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }

" use node.js and yarn
Plug 'iamcco/sran.nvim', { 'do': 'yarn' }
```

### Hello world

plugin structure

``` text
your-plugin-dir
  -> rplugin
     -> sran
        -> hello-world.js // or javascript dir package
```

hello-world.js

```javascript
module.exports = function (plugin) {
  const nvim = plugin.nvim
  nvim.on('notification', (method, args) => {
    if (method === 'hello_world') {
      setTimeout(() => {
        nvim.command('echo "hello world"')
      }, 2000)
    }
  })
}
```

install sran.nvim and your plugin

```viml
Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'your-account/your-plugin-name'
```

now

```viml
:call sran#rpc#notify('hello_world')
```

then you will see `hello world` message in the command line after 2 seconds.

> use `request` for sync

### About

- sran.nvim will use builtin node.js binary if use pre build
- builtin packages
  - fast-glob
  - log4js
  - msgpack-lite
  - neovim
  - node-fetch
  - tslib
  - cheerio
  - rxjs
  - findup
  > so if you use these packages you don't need to install them in your plugin's local directory
- javascript [Plugin](https://github.com/iamcco/sran.nvim/blob/8ea143449dd09f1b35b18976ed7c07efa8ca3f42/src/attach/plugin.ts#L6) api
  - [nvim](https://github.com/neovim/node-client) vim instance
  - util
    - getIP: function to get ip
    - opener: it's [opener](https://github.com/domenic/opener) fork to opens stuff, like webpages and files and executables, cross-platform
    - getLogger: function to get log4js's logger instance
- viml api
  - `sran#rpc#notify` for notification call
  - `sran#rpc#request` for request call

### Examples

- [dict.nvim](https://github.com/iamcco/dict.nvim) translate words through google translate api
- [git-p.nvim](https://github.com/iamcco/git-p.nvim) git diff sign and blame line display
- [clock.nvim](https://github.com/iamcco/clock.nvim) big clock for neovim

### Debug

``` vim
let $NVIM_SRAN_LOG_FILE = expand('~/sran-nvim.log')
let $NVIM_SRAN_LOG_LEVEL = 'debug'
```

### Buy Me A Coffee ☕️

![btc](https://img.shields.io/keybase/btc/iamcco.svg?style=popout-square)

![image](https://user-images.githubusercontent.com/5492542/42771079-962216b0-8958-11e8-81c0-520363ce1059.png)
