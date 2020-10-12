vim-operator-gitrebase
======================

Depends
------------

- [vim-operator-user](https://github.com/kana/vim-operator-user)


Install
----------------

### Use [NeoBundle](https://github.com/Shougo/neobundle.vim)

```vim
NeoBundle 'pocke/vim-operator-gitrebase'
```


Example vimrc
---------------


```vim
NeoBundleLazy 'pocke/vim-operator-gitrebase'


if neobundle#tap('vim-operator-gitrebase')
  call neobundle#config({
  \   'depends': 'kana/vim-operator-user',
  \   'autoload': {
  \     'filetypes': 'gitrebase'
  \   }
  \ })

  function! neobundle#tapped.hooks.on_source(bundle)
    map <buffer> s <Plug>(operator-gitrebase-squash)
    map <buffer> e <Plug>(operator-gitrebase-edit)
    map <buffer> r <Plug>(operator-gitrebase-reword)
    map <buffer> f <Plug>(operator-gitrebase-fixup)
  endfunction

  call neobundle#untap()
endif
```


---------------------

Copyright &copy; 2014 pocke
Licensed [MIT][mit]
[MIT]: http://www.opensource.org/licenses/mit-license.php
