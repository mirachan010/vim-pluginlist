Vimignore
=========

A simple plugin to allow you to efficiently manage your `.gitignore` files in
your project.

Introduction
------------

I came up with the idea for this plugin when I was working on various projects
with partners and would need to reconfigure the gitignore file for the
project. I had to do this often enough that I felt that it should flow more
natively in vim.

I decided to make this plugin to facilitate the process. Vimignore offers a
few different commands for making sure the appropriate files are ignored.

Usage
-----

Simply call `:GEditIgnore` to open up your .gitignore file.

If no file exists, this will open a new .gitignore file in the root of the
git repo.

If you have multiple .gitignore files, this plugin will prefer the one at
the root. If that does not exist, it will then prefer the deepest .gitignore
file along your path.

Also, you can use the `:GAddToIgnore` and `:GIgnoreCurrentFile` commands for
alternative methods of editing the `.gitignore` file.

See `:help vimignore` from within vim for up-to-date documentation on all
available commands.

Fugitive Integration
--------------------

The best way to use this plugin is in conjunction with [Tim Pope's fugitive
plugin](https://github.com/tpope/vim-fugitive). In particular, when using
fugitive's `:Gstatus` command, Vimignore adds a mapping on `I`.

Press `<shift>-i` when viewing the git index (`:Gstatus` window) to add the file
on the current line to the gitignore list and update the git index accordingly.

Configuration
-------------

If you open an empty instance of vim, this will open the .gitignore in the
entire buffer. If you already are editing a file, it will open the
.gitignore file in a split.

The plugin will, by default, open this in a horizontal split. To configure this,
set the following variable:

```
let g:gsplit_pref = 1
```

Set this to 0 in order to reconfigure vim to use horizontal splits.
