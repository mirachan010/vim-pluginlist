## twitter source for unite.vim

A Twitter timeline in unite.vim with an asynchronous update.
This is a temporary plugin until TweetVim can update asynchronously and automatically.
If you want more features, try to use TweetVim made by @basyura.

## Requirements

- [unite.vim](https://github.com/Shougo/unite.vim) (interface)
- [open-browser.vim](https://github.com/tyru/open-browser.vim) (for authentication)
- [twibill.vim](https://github.com/basyura/twibill.vim) (Twitter API wrapper for Vim script)

## Usage

Simply do `:Utwit` command.
If you use this command at first time, a browser will be opened and you must authenticate the application.
In unite-twitter buffer, you can choose next tweet by typing `<CR>`.

All `:Unite` options are available in `:Utwit` too, except `-update-time=` option.

If you don't want to start in insert mode,

    :UTwit -no-start-insert

If you want to change winwidth or winheight,

    :UTwit -winwidth=70 -vertical

If you want to remove a cursor highlight,

    :UTwit -no-cursor-line

## Screen capture

![screen capture](https://raw.github.com/rhysd/unite-twitter.vim/master/screen_capture.jpg)
