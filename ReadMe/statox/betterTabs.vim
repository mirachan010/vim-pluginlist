# betterTabs.vim
BetterTabs allows you to keep the a separation between tabs in Vim: Each buffer
stays on the tab it was open in. This way you can keep one project per tab and
don't find buffers switching from a tab to another breaking your workflow.

**Really important note** This plugin is not maintained anymore. I realized that
when I was using this plugin I was fighting against Vim instead of using its
native features. I would recommand *not* to use this plugin and get more comfortable
with [`:h :buffers`](http://vimhelp.appspot.com/windows.txt.html#%3Abuffers) and
the related commands.

This plugin never reached the final product stage, it remained in development until
I abandonned it. It might then contains different bugs or unwanted behavior. If you
find one feel free to create a pull request.

# The idea
I created this plugin because I had to work on different projects with gVim on a
Windows OS. To do that in a terminal version of Vim I usually use different
instances of Vim open on several tmux terminal.

Unfortunately switching between several instances of gVim on a graphical OS
feels pretty inconvenient to me. So I created one tab per project, but I was 
bothered by the fact that a buffer open in a tab could be accessed in any other
tab.

So I created this plugin it simply allows you to keep every buffer in the tab it
was open in.

# Installation
BetterTabs should be compatible with most of the plugin managers. I'd recommand
using [Vim-Plug](https://github.com/junegunn/vim-plug): simply add the following
line to your `.vimrc`:

    Plug 'statox/betterTabs.vim'

Save your `.vimrc`, execute `PlugInstall` and voilà!
    
The plugin is entirely in vimscript, it doesn't need any dependencies.

# How to use it

## Adding a buffer to a tab
This plugin uses autocommands when a new buffer is created so the user doesn't
have to worry about how they're handled. Simply open tabs as you usually do and
use your prefered way to open a buffer.

Once a buffer is open in a tab it can't be accessed from another tab. To
switch between tabs the user can use `tabnext` and `tabprevious` as usual.

## Switching between buffers
To switch between the buffers of a tab use the commands `:NextBuf` and
`:PrevBuf`.

The plugin also defines the following mappings:

    nnoremap <Leader>h :PrevBuf<CR>
    nnoremap <Leader>l :NextBuf<CR>

You can then use `<Leader>h` and `<Leader>l` to switch between the buffers.

## Closing a buffer
To keep the behavior of this plugin consistent, users shouldn't use `bdelete`
but the command `:CloseBuf`.

The following mapping is also defined:

    nnoremap <Leader>bc :CloseBuf<CR>

So the user can use `<Leader>bc` to close a buffer.

## Closing a tab
To keep the behavior of this plugin consistent, users shouldn't use `tabclose`
but the command `:CloseTab`.

## Listing the buffers
The command `:ListBuf` allows you to see the different tabs open and the
buffers contained in the tabs.

You can also use `F2` to print the list thanks to the following mapping:

    nnoremap <F2> :ListBuf<CR>

## Disabling mappings
It is possible to disable the default mappings to override them, simply add the
following line to your `.vimrc`:

    let g:betterTabsVim_map_keys = 0
