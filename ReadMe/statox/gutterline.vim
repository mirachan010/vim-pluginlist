# GutterLine.vim
Show the current line as a gutter sign

![gutterline](https://user-images.githubusercontent.com/6271599/36177296-861981d8-1115-11e8-959f-7b4ced7a0d20.png)

# Installation

You can install GutterLine with your prefered plugin manager. For example with
[vim-plug](https://github.com/junegunn/vim-plug) simply add to your `.vimrc`:

    Plug 'statox/gutterline.vim'

# Configuration

## Update time

GutterLine.vim use the `updatetime` option to refresh the sign in the gutter. By
default it is set to 4000 milliseconds. I tested this plugin with a setting of
300 ms:

    set updatetime=300

If you already have some autocommands relying on the `CursorHold` or
`CursorHoldI` or if you use swapfiles changing this setting may slow down Vim
because it will processes the autocommands and write the swap files more often.

I recommend that you test this setting and adjust it to get a response time you
like.

## User settings

GutterLine.vim has several several options which can be set by the user to
change its behavior.

You can change the string used to show the current line, by default it is `>`:

    let g:GutterLineSign='->'

You can define a list of filetypes where the current line should not be shown in
the gutter. For example to ignore the helpfiles:

    let g:GutterLineIgnore=['help']

# Contribute

If you spot a bug in the plugin you can use the issue tracker.

Pull requests are also welcome!
