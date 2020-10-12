serverspec.vim
===========

[![Build Status](https://travis-ci.org/pocke/serverspec.vim.svg?branch=master)](https://travis-ci.org/pocke/serverspec.vim)

- Neosnippet source for [Serverspec](http://serverspec.org/).
- Open Serverspec reference


Installation
----------

### Dependency

- [Shougo/neosnippet.vim](https://github.com/Shougo/neosnippet.vim)
- [tyru/open-browser.vim](https://github.com/tyru/open-browser.vim)
- ruby interface (`:help if_ruby`)
  - support ruby 2.2 or higher.

All dependencies are optional.  
If you install the above plugins and ruby interface, you can use full functions of `serverspec.vim`.

### vimrc

- NeoBundle

```vim
NeoBundle 'Shougo/neosnippet'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'pocke/serverspec.vim'
```

and `:NeoBundleInstall`

- Vundle

```vim
Plugin 'Shougo/neosnippet'
Plugin 'tyru/open-browser.vim'
Plugin 'pocke/serverspec.vim'
```

and `:PluginInstall`

Usage
------

### Neosnippet

```vim
:set ft=ruby.serverspec
```

or

```vim
:NeoBundleSource ~/.vim/bundle/serverspec.vim/neosnippets/ruby.serverspec.snip
```

![serverspec](https://cloud.githubusercontent.com/assets/4361134/11917890/8696822e-a75d-11e5-9c0e-9846ba507d36.gif)

### ServerspecDoc command

```vim
:ServerspecDoc

" or

:ServerspecDoc <name>
```

References
-------

- [Serverspec を書きやすくする Vim プラグインをつくった - pockestrap](http://pocke.hatenablog.com/entry/2015/12/26/113719) (Japanese blog)
- [skyarch-networks/serverspec-generator-app](https://github.com/skyarch-networks/serverspec-generator-app) (GUI Application with Electron)

Development
-----------

### Requirements

- Ruby 2.0 or higher
- bundler
- make


### How to update

```sh
bundle update
make
```


License
-------

These codes are licensed under CC0.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)
