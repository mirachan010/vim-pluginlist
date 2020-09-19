Smart Column Colors
=

This plugin alert us when we reach a defined amount of characters per line.

Instead of showing a line over all the content, showing the limit,
SmartColumnColors displays a bg/fg distinctive for that character in particular.

How it looks? (red character)
-
![ScreenShot](https://raw.githubusercontent.com/gagoar/SmartColumnColors/master/screenshot.png)

Install
-

if you are using [janus](https://github.com/carlhuda/janus), put it under ~/.janus like this:

``` bash
  git clone git@github.com:gagoar/SmartColumnColors.git
```

then all you need to do is restart your vim/mvim

Options (colors, column limit)
-

Custom column number? (on your .vimrc/.vimrc.after)

``` vim
  let g:smart_display_opts = { 'column' : NN }
```
where NN it's the column number that you want highlighted

Custom Highlighted colors? (on your .vimrc/.vimrc.after)

``` vim
  let g:smart_display_opts = {'guifg': 'White', 'guibg': 'Red' }
```

`note` you could use all the properties mentioned erlier in the same
declaration:

``` vim
  let g:smart_display_opts = {'guifg': 'White', 'guibg': 'Red', 'column' : 82 }
```

Disabling
-

To disable it globally place the following in your `.vimrc`:
``` vim
  let g:loaded_SmartColumnColors = 1
```

To disable it for just the current buffer set the following anywhere it makes sense:
``` vim
  let b:disable_SmartColumnColors = 1
```

If you just wanted to do that temporarily you can execute in your vim:
``` vim
  set b:disable_SmartColumnColors = 0
```

or

``` vim
  unlet b:disable_SmartColumnColors` and it will start working again.
```
