vim-improve-diff
==============================================================================
vim-improve-diff is a plugin to improve diff feature in Vim.
It provide the following features:


**Auto diffupdate**  
When user leave an insert mode, it call `diffupdate` when the current buffer
is in diff mode.


**Auto diffoff**  
When user close a diff buffer, it count the number of diff buffer in a current
tab page and call `diffoff!` when there is only a single diff buffer remains.


**Improved :DiffOrig**  
If no :DiffOrig command is defined, it automatically define an improved versin
of :DiffOrig command.


You would probably interested in [lambdalisue/vim-unified-diff](https://github.com/lambdalisue/vim-unified-diff) which use a 'histogram' algorithm to improve the quality of diff.

Install
-------------------------------------------------------------------------------

The repository follow a standard directory structure thus you can use [gmarik/Vundle.vim], [Shougo/neobundle.vim], or other vim plugin manager to install vim-gita like:

```vim
" Vundle.vim
Plugin 'lambdalisue/vim-improve-diff'

" neobundle.vim
NeoBundle 'lambdalisue/vim-improve-diff'
```

If you are not using any vim plugin manager, you can copy the repository to your $VIM directory to enable the plugin.

[Shougo/neobundle.vim]:                     https://github.com/Shougo/neobundle.vim
[gmarik/Vundle.vim]:                        https://github.com/gmarik/Vundle.vim


Usage
-------------------------------------------------------------------------------

After you install, it automatically enable all features.
See [vim-improve-diff.txt](./doc/vim-improve-diff.txt) or execute `:help vim-improve-diff` to control the features.


License
-------------------------------------------------------------------------------
The MIT License (MIT)

Copyright (c) 2015 Alisue, hashnote.net

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
