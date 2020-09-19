# TWMC: Tab/Win Move Commands

TWMC is a set of useful commands for moving a tab, window or a cursor between vim's tabs / windows.
It provides additional useful commands such as maxmizing a window.  

TWMC is composed of three commands:
- Winmove : Move the current window between windows.
- Tabcmd : `:wincmd`-style tab management command including moving commands for a cursor between tabs.
- WincmdEx : Extension of the original `:wincmd`.

Each command has several sub-commands called by `:wincmd`-style single character arguments.

## Winmove

In vim normal mode, you can just type `:Winmove {arg}` (similar to `:wincmd {arg}`).  
List of available `{arg}` is:

{arg} | Winmove
---   | ---
h     | Move current window to left.
l     | Move current window to right.
j     | Move current window to down.
k     | Move current window to up.
p     | Move current window to location of previously focused window.

and all other arguments used in `:wincmd` that move a cursor such as w, W, t, b.

## Tabcmd

In normal mode, just type `:Tabcmd {arg}`.

{arg} | Tabcmd
---   | ---
h     | Go to the left tab page.
l     | Go to the right tab page.
W     | Go to the left tab page. Wraps around from the first to the last one.
w     | Go to the right tab page. Wraps around from the last to the first one.
t     | Go to the first tab page.
b     | Go to the last tab page.
p     | Go to the previous tab page.
q     | Close current tab page and move focus to previously focused one.
n     | Open a new tab page with an empty window, after the current tab page.
o     | Close all other tab pages.

## WincmdEx

This command overrides the original `:wincmd` command.  
In normal mode, just type `:WincmdEx {arg}`.

{arg} | WincmdEx
---   | ---
q     | Quit current window and move cursor to previously focused one.
m     | Toggle maximizing current window.

and all other arguments used in `:wincmd`.
<!--For example,-->
<!--```-->
<!--h - Move cursor to the window left of current one.-->
<!--l - Move cursor to the window right of current one.-->
<!--W - Move cursor to window below/right of the current one.-->
<!--If there is no window below or right, go to top-left window.-->
<!--w - Move cursor to window above/left of the current one.-->
<!--If there is no window above or left, go to bottom-right window.-->
<!--t - Move cursor to top-left window.-->
<!--b - Move cursor to bottom-right window.-->
<!--p - Go to the previous window.-->
<!--```-->

## Recommended Key Mappings

TWMC does not provide default key mappings to keep your key mappings clean.
Instead, I suggest convinient key mappings what I'm using now.
You can add them to your .vimrc if you want.
Of course, you can modify it as you want.

```
function! s:nnoreicmap(option, shortcut, command)
	execute 'nnoremap '.a:option.' '.a:shortcut.' '.a:command
	execute 'imap '.a:option.' '.a:shortcut.' <Esc>'.a:shortcut
	execute 'cmap '.a:option.' '.a:shortcut.' <Esc>'.a:shortcut
endfunction

" move current window between windows
call s:nnoreicmap('','<A-y>',':Winmove h<CR>')
call s:nnoreicmap('','<A-u>',':Winmove j<CR>')
call s:nnoreicmap('','<A-i>',':Winmove k<CR>')
call s:nnoreicmap('','<A-o>',':Winmove l<CR>')
call s:nnoreicmap('','<A-0>',':Winmove p<CR>')

" move cursor between tabs & tab management
call s:nnoreicmap('','<A-H>',':Tabcmd h<CR>')
call s:nnoreicmap('','<A-L>',':Tabcmd l<CR>')
call s:nnoreicmap('','<A-P>',':Tabcmd p<CR>')
call s:nnoreicmap('','<A-Q>',':Tabcmd q<CR>')
call s:nnoreicmap('','<A-N>',':Tabcmd n<CR>')

" move cursor between windows & window management
call s:nnoreicmap('','<A-h>',':WincmdEx h<CR>')
call s:nnoreicmap('','<A-j>',':WincmdEx j<CR>')
call s:nnoreicmap('','<A-k>',':WincmdEx k<CR>')
call s:nnoreicmap('','<A-l>',':WincmdEx l<CR>')
call s:nnoreicmap('','<A-p>',':WincmdEx p<CR>')
call s:nnoreicmap('','<A-q>',':WincmdEx q<CR>')
call s:nnoreicmap('','<A-n>',':WincmdEx n<CR>')
call s:nnoreicmap('','<A-v>',':WincmdEx v<CR>')
call s:nnoreicmap('','<A-s>',':WincmdEx s<CR>')
call s:nnoreicmap('','<A-m>',':WincmdEx m<CR>')
```

I've define the function `s:nnoreicmap()` to map for normal, insert and command-line modes simultaneously,
and installed ![vim-fixkey](https://github.com/drmikehenry/vim-fixkey) plugin to use alt-key mappings.
`<A-H>` means alt+shift+h.
