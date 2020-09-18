# vim-volt (ex. [tyru/vivo.vim](https://github.com/tyru/vivo.vim))

Vim package interface for [vim-volt/volt](https://github.com/vim-volt/volt).


## Install

Install this plugin under `$VOLTPATH` (default is `~/volt`) by:

```
vim -c ":so https://raw.githubusercontent.com/vim-volt/vim-volt/master/bootstrap.vim"
```

and put the following lines in your vimrc:

```vim
set rtp+=$HOME/volt/repos/github.com/vim-volt/vim-volt
call volt#load()
```

`volt#load()` does:
* Get vim plugins list from current profile (see "Profile" section) in `$VOLTPATH/lock.json`, and
* Append vim plugins to Vim runtimepath
* Load plugconf (see "Plugconf" section)

**Using this plugin with other plugin managers is highly discouraged.**
**It may result in destroying Vim runtimepath, or other problems.**

## Install vim plugin

To install [tyru/open-browser.vim](https://github.com/tyru/open-browser.vim), you can install by:

```
:VoltGet tyru/open-browser.vim    " (1)
```

or

```
:VoltGet github.com/tyru/open-browser.vim    " (2)
```

or

```
:VoltGet https://github.com/tyru/open-browser.vim    " (3)
```

To install from any other git repositories other than GitHub, use (2) or (3).

## List installed plugins

```
:VoltQuery -l
```

## Features

* plugconf
* profile

## Profile

Switch using plugin list, and if it loads $VOLTPATH/rc/init.vim or not.

(TODO)

## Plugconf

Plugin configuration can be written in `$VOLTPATH/plugconf/{site}/{user}/{name}.vim`.

(TODO)
