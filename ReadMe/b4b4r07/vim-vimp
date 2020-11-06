# vim-vimp

`vim-vimp` is a Vim plugin that supports the Vim plugin development.

## Description

When `vim-vimp` discovers `Vimpfile` written Vim plugins required for the development, current directory is regarded as a development directory of new Vim plugins.

Then, `vim-vimp` terminates the reading of other Vim plugins, read only plugins in current directory and `.vimp` directory that created and managed by `vim-vimp`.

- example: Vimpfile

		vim-vimp
		ctrlp.vim
		

## Requirements

- Vim 7.4+

## Usage

### Setup

Copy and paste the following to the beginning of your `.vimrc`.

```vim
let s:true  = 1
let s:false = 0

let s:vimp  = s:true
if len(findfile("Vimpfile", ".;")) > 0
  let s:vimp = s:false
  execute "set runtimepath+=" . getcwd()
  execute "set runtimepath+=" . getcwd() . "/.vimp"
  for plug in split(glob(getcwd() . "/.vimp/*"), '\n')
    execute 'set runtimepath+=' . plug
  endfor
endif
```

Then, append something like this the appropriate place in your `.vimrc`.

```vim
 if has('vim_starting') && isdirectory($NEOBUNDLEPATH)
+  if s:vimp == s:true
     set runtimepath+=$NEOBUNDLEPATH
+  endif
 endif
```

### Next

`:Vimp`


## Demo

- Usually

	![](doc/true.png)

- Vimpfile exists

	![](doc/false.png)

## Installation

Use your favorite manager.

- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/b4b4r07/vim-vimp.git ~/.vim/bundle/vim-vimp`

- [Vundle](https://github.com/gmarik/vundle)
  1. Add `Bundle 'b4b4r07/vim-vimp'` to .vimrc
  2. Run `:BundleInstall`
  
- [NeoBundle](https://github.com/Shougo/neobundle.vim)
  1. Add `NeoBundle 'b4b4r07/vim-vimp'` to .vimrc
  2. Run `:NeoBundleInstall`
  
- [vim-plug](https://github.com/b4b4r07/vim-plug)
  1. Add `Plug 'b4b4r07/vim-vimp'` to .vimrc
  2. Run `:PlugInstall`

## License

[MIT](https://raw.githubusercontent.com/b4b4r07/dotfiles/master/doc/LICENSE-MIT.txt)

## Author

[BABAROT](http://tellme.tokyo) a.k.a. b4b4r07
