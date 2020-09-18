# vim-appendtoclip
vim plugin for appending to the default register

## Summary

Have you ever wanted to yank or copy one line at a time from various parts
of a file and be able to paste the accumulated results in one operation?
Sure, you can do this using named registers using the uppercase letter, but
it is cumbersome and unnatural.  The **AppendToClip** plugin lets you
append to the default register (and the clipboard, and primary registers
if the *clipboard* option contains 'unnamed' or 'unnamedplus') in a natural
and easy way.

## Functionality

```vim
<Space>yy
```
Append line(s) to the default register, '"'. Also append to the clipboard,
'\*', and primary, '+', registers if the *clipboard* option contains 'unnamed'
and 'unnamedplus', respectively.

```vim
<Space>dd
```
Delete and append line(s) to the default register, '"'. Also append to the
clipboard, '\*', and primary, '+', registers if the *clipboard* option contains
'unnamed' and 'unnamedplus', respectively.

These mappings work in both normal and visual mode and take a count just like
the built in commands ```dd``` and ```yy```.

If you have the [vim-repeat](https://github.com/tpope/vim-repeat) plugin
installed, you can repeat either of the above mappings with dot, '.'.

## Options

```vim
g:appendtoclip_leader
```
The key used as the leader to the mappings. The default is `<Space>`.

## License
The AppendToClip plugin is released under Vim's license.

