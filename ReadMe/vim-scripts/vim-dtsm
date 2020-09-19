# vim-dtsm

This is a Vim plugin for [vvkame/dtsm](https://github.com/vvakame/dtsm) command, which is dependency management tool for TypeScript .d.ts files.

## How to install
### Requirements

* `dtsm` command (`npm install -g dtsm`)
* [Shougo/unite.vim](https://github.com/Shougo/unite.vim)

If you use NeoBundle, write the following into your .vimrc:

```vim
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Quramy/vim-dtsm'
```

And execute `:NeoBundleInstall` command in your Vim, you can get unite.vim and vim-dtsm.

## How to use
### Unite Source
vim-dtsm has an Unite source.

Execute `:Unite dtsm`, so you can get candidates for installable .d.ts files.
Hit enter on selected candidate, so the .d.ts file get installed.

You can execute with keyword. e.g. `:Unite dtsm:angular`(it's same `dtsm search angular` in terminal).

### Commands
This plugin provides the following commands:

* `:DtsmInstall file_name1 file_name2 ...`: Install .d.ts files.
* `:DtsmUninstall file_name1 file_name2 ...`: Uninstall .d.ts files.
* `:DtsmInit` : Create dtsm.json.
* `:DtsmFetch` : Fetch from remote repository
* `:DtsmUpdate` : Update all .d.ts files.

## License
This software is released under the MIT License, see LICENSE.txt.

