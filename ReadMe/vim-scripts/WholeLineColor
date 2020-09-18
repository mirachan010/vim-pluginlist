# vim-wholelinecolor
vim plugin for changing background color of lines

## Summary

Have you ever wanted to mark lines or groups of lines in a way that is easy
to see and be be able to jump to those markings? The **WholeLineColor** plugin
lets you do just that. Using Vim's signs feature, the background color of
lines can be changed with convenient mappings. Groups of lines can be
marked in visual mode with the same mappings. There are also mappings to
go to the next and previous group of marked lines.

## Functionality

```vim
<Space>bu
```
Remove set color from current (or selected) lines.


```vim
<Space>bn
```
Set background of current or selected lines to green.


```vim
<Space>bg
```
Set background of current or selected lines to grey.


```vim
<Space>bl
```
Set background of current or selected lines to blue.


```vim
<Space>bp
```
Set background of current or selected lines to purple.


```vim
<Space>br
```
Set background of current or selected lines to red.


```vim
<Space>bb
```
Set background of current or selected lines to black.


The above mappings work in both normal and visual mode and take a count just
like built in commands.

If you have the [vim-repeat](https://github.com/tpope/vim-repeat) plugin
installed, you can also repeat any of the above mappings with dot, '.'.


```vim
<Space>bK
```
Delete all lines that don't have background color set (keep only lines with
background color set).


```vim
<Space>bD
```
Delete all lines with background color set.


```vim
<Space>bU
```
Remove all set background colors.


```vim
<c-n>
```
Go to next group of lines with background color set.


```vim
<c-p>
```
Go to previous group of lines with background color set.

## Options

```vim
g:wholelinecolor_leader
```
The key used as the leader to the mappings. The default is `<Space>`.

```vim
g:wholeline_sign_num
```
Starting sign id. The default is 373700. Change this if this is conflicting
with other sign ids, e.g. sign ids coming from other plugins.

```vim
g:wholelinecolor_next
```
The keystroke used to go to the next group of lines with background color set.
The default is `<c-n>`.

```vim
g:wholelinecolor_prev
```
The keystroke used to go to the previous group of lines with background color
set. The default is `<c-p>`.

These are the default highlight settings. Change them to suit your preferences.

```vim
    highlight WLCBlackBackground  ctermbg=233 guibg=#121212
    highlight WLCRedBackground    ctermbg=52  guibg=#882323
    highlight WLCBlueBackground   ctermbg=17  guibg=#003366
    highlight WLCPurpleBackground ctermbg=53  guibg=#732c7b
    highlight WLCGreyBackground   ctermbg=238 guibg=#464646
    highlight WLCGreenBackground  ctermbg=22  guibg=#005500
```

## Credits

The starting point of this plugin was the [numsign](https://github.com/vim-scripts/numsign.vim) plugin created by Jinjing He.
Some of the original code remains.

## License
The WholeLineColor plugin is released under Vim's license.

