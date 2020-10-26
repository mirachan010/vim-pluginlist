# Vimconfig

This is my personal vim config, it uses 'pathogen' + 'git submodules' to
manage the different plugins that are installed and being used.

To get started, after downloading just run the `vimconfig/setup` shellscript
that will download all the extensions needed.

### Install

```bash
$ git clone http://github.com/roman/vimconfig $HOME/.vim
$ cd $HOME/.vim 
$ ./setup
```

## Folder Structure

* `autoload/`

  This folder will contain only the pathogen extension, that will allow to
  manage the vim plugins without to much hassle

* `bundle/`

  All the plugins are installed here as git submodules, in order to make the
  plugins work after clone, you _should_ run the `vimconfig/setup` shellscript.


* `colors/`

  This folder will hold all the different colorschemes I've found so far over
  the webz the default one for terminal is wombat256, and the one for gvim is
  wombat.

* `modules/`

  This folder will contain all the basic setup of the plugins, organized by a
  different file for each of the plugins that is being configured, there is also
  some files that configure the basics of vim.

* `tmp/`

  A folder that will hold temporal metadata for the installed plugins

## Installed Plugins

### Yankring

Allows you to interact easily with the 'yank register' (aka yy, or y related
commands).

`:help yankring-tutorial`

Handy shortcuts from Yankring:

* `\y` -> does a :YRShow

### Rainbow Parenthesis

Special for Lisp, Clojure coding, or overnested parenthesis. To get started
use the '\r' command and you will get rainbow parenthesis, use '\r' again to
reset to normal.

`:help rainbow`

Handy shortcuts for Rainbow:

* `\r` -> does a :ToggleRainbowParenthesis

### PowerLine

Powerline is a utility plugin which allows you to create better-looking, more
functional vim statuslines.

`:help powerline`

### Ack

This plugin is a front for the Perl module App::Ack.  Ack can be used as a
replacement for grep.  This plugin will allow you to run ack from vim, and
shows the results in a split window.

`:help ack`

Handy shortcuts:

* `,?` -> does an :Ack search using the word bellow the cursor

### ctrlp

Full path fuzzy file, buffer, mru and tag finder with an intuitive interface.

`:help ctrlp`

Handy shortcuts:

* `ctrl-b` -> lists active buffers you are editing on
* `ctrl-f` -> looks up files by name in the current directory

### fugitive

Awesome plugin that integrates tightly Git repos with vim, to get started
quickly I suggest watching the amazing series of vimcasts about this incredible
tool: http://vimcasts.org/blog/2011/05/the-fugitive-series/

`:help fugitive`

### golden-ratio

Plugin that will increase the size of the window you are focusing on, and
decreasing the size of the ignored windows using the golden ratio metrics.

`:help golden-ratio`

### hexHighlight

Plugin that will put colors on HEX colos numbers, _only works on gvim/macvim_.

### matchit

Enhnanced matching of %

`:help matchit`

### NERDTree

The NERD tree allows you to explore your filesystem and to open files and
directories. It presents the filesystem to you in the form of a tree which you
manipulate with the keyboard and/or mouse. It also allows you to perform
simple filesystem operations.

`:help NERDTree`

Handy shortcuts:

* `\p` -> Opens up the NERDTree on the left side of the screen

# PLUGIN LIST IS NOT COMPLETE
