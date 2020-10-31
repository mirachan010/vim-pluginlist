# bufswitcher.vim - Instant buffer switcher

[![Build Status][travis-svg]](https://travis-ci.org/ryym/bufswitcher.vim)

[travis-svg]: https://travis-ci.org/ryym/bufswitcher.vim.svg?branch=master

bufswitcher.vim is a Vim plugin to switch buffers instantly using statusline.
This plugin shows buffer list in statusline only while switching buffers.
This means you can use this plugin with any other plugins which customize
statusline.

![Switching buffers](screenshots/switching.gif)

When many buffers are opened, other great plugins like [unite.vim][unite] or
[ctrlp.vim][ctrlp] are more useful. But when there are a few buffers, bufswitcher
is convenient because it opens no new window and the buffer list in statusline
will close automatically after switching by default.

[unite]: https://github.com/Shougo/unite.vim
[ctrlp]: https://github.com/kien/ctrlp.vim
