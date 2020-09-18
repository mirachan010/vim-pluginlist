netgrep
=======

vim plugin for grepping and finding on a remote server using Netrw.

# NetGrep

version 1.0

Adds functions for Grepping and Finding files that are on a remote server. The
files can then be edited using Netrw (which is built into most vim installs).

Note that this will only work on a Unix-like system such as Linux or the MacOS.

## USAGE

This plugin adds two commands, NetGrep and NetFind. Each of these takes one or
two arguments. The first argument is a pattern and the second is a path (in the
case of NetFind, the pattern is a filename). In both cases, the path is optional
and will default to `g:NetGrep_default_directory`.

So, for example, to grep for 'foobar' on a remote server in the path ~/files/,
use `NetGrep` like so:

  `:NetGrep foobar ~/files/`

To search for files with the name 'foo.txt' on a remote server in the path
~/stuff/, use `NetFind` like so:

  `:NetFind foo.txt ~/stuff/`

## CONFIGURATION

There are two global variables that must be set to properly use NetGrep.

### `g:NetGrep_server_name`

This is the server name on which to search. It can also be an IP address.
NetGrep will use ssh on the server to perform its searches, so if you'd like to
do any special configuration, such as using a shared key to prevent having to
enter a password, just configure ssh as you normally would (this is beyond the
scope of these instructions, but you should be able to find help on these topics
fairly easily with an Internet search).

### `g:NetGrep_default_directory`

This is the default directory used when running searches on the remote server.
If no directory is specified when using `NetGrep` or `NetFind`, the directory in
this variable will be used. If a path is specified in those commands, but the
path is relative (not a full path), the default directory will be prepended to
it. The default directory must end with a slash.

So, in a configuration file (like .vimrc), set the variables like so:

```
  let g:NetGrep_server_name = 'myremoteserver.foo.com'

  let g:NetGrep_default_directory = '/home/username/'
```

## Installation

If you're using [Pathogen](https://github.com/tpope/vim-pathogen) and have git
installed, it's very simple; just clone the project into your ~/.vim/bundle/ directory:

```
cd ~/.vim/bundle/
git clone https://github.com/sirbrillig/netgrep
```
