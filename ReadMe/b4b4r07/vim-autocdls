![](https://raw.githubusercontent.com/b4b4r07/screenshots/master/vim-autocdls/logo.png)

[![](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]

Automatically execute shell-like `ls` command after `:cd` in Vim.

***DEMO:***

![](https://raw.githubusercontent.com/b4b4r07/screenshots/master/vim-autocdls/demo.gif)

## Description

`vim-autocdls` provides `:Ls` user-defined command that id shell-like `ls` commands in Vim. In addition, if `g:autocdls_autols_enabled` is true in this plugin, `:Ls` command is executed automatically after executing `:cd`, `:lcd` and so on. Thanks to that, make it easy to know file list in cwd.

## Usage

### Ls

	:Ls[!] [{path}]
	
Show up some files in the {path} directory to cmd-line. If you want to show up all the files, including the files that begin with a dot in the {path} directory, then please put a bang. (`:Ls!`) If you omit the {path}, the current directory is specified as {path}.

### LsGrep

	:LsGrep[!] {word}

Display the candidate that has the name of the directory that contains the {word} in the current directory. As well as `:Ls!`, if you want to search the directory that contains the {word}, then please put a bang. (`:LsGrep!`)

### `g:autocdls_show_filecounter`

- Default is 1
- Show number of files in current directory to cmd-line

### `g:autocdls_show_pwd`

- Default is 0
- Print working directory on cmd-line

and any more.

For more information, see also [help](./doc/vim-autocdls.txt)

## Installation

[Neobundle](https://github.com/Shougo/neobundle.vim) | [Vundle](https://github.com/VundleVim/Vundle.vim) | [vim-plug](https://github.com/junegunn/vim-plug)

```vim
NeoBundle 'b4b4r07/vim-autocdls'
Plugin    'b4b4r07/vim-autocdls'
Plug      'b4b4r07/vim-autocdls'
```

## Licence

[MIT][license] © [b4b4r07](http://b4b4r07.com)

[license]: https://raw.githubusercontent.com/b4b4r07/dotfiles/master/doc/LICENSE-MIT.txt
