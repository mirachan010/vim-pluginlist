Text Object for C and C++ Functions
===================================

vim-textobj-function-clang is a Vim text-object plugin to select functions in C and C++.  The code is analyzed by clang.  This plugin is a plugin of [textobj-function](https://github.com/kana/vim-textobj-function); what we call a plugin of plugin.  And this plugin depends on [libclang-vim](https://github.com/rhysd/libclang-vim) to use clang's code analysis by Vim script.  Please install
them in advance.

## Usage

Please see [vim-textobj-function's document](https://github.com/kana/vim-textobj-function/blob/master/doc/textobj-function.txt) to know the usage.

## Installation

This plugin depends on [textobj-user](https://github.com/kana/vim-textobj-user), [textobj-function](https://github.com/kana/vim-textobj-function) and [libclang-vim](https://github.com/rhysd/libclang-vim).  You must install them in advance.  If you use [neobundle](https://github.com/Shougo/neobundle.vim), you can install them by writing below code in your vimrc.

```vim
  NeoBundleLazy 'kana/vim-textobj-indent', {
        \ 'depends' : [
        \   'kana/vim-textobj-user',
        \   'kana/vim-textobj-function',
        \   'rhysd/libclang-vim',
        \ ],
        \ 'autoload' : {
        \     'mappings' : [['xo', 'if'], ['xo', 'af']]
        \   }
        \ }
```

## License

[The MIT License](http://opensource.org/licenses/MIT) Copyright (c) 2014 rhysd
