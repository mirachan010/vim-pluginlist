# reftools.vim
A vim plugin for https://github.com/davidrjenni/reftools
It make you east to call reftools.  

# Install
I suggest you to use a plugin manager, such vim-plug or others.
- vim-plug
```viml
Plug 'tenfyzhong/reftools.vim'
```
- Manual
```
git clone https://github.com/tenfyzhong/reftools.vim.git ~/.vim/bundle/reftools.vim
echo 'set rtp+=~/.vim/bundle/reftools.vim' >> ~/.vimrc
vim -c 'helptag ~/.vim/bundle/reftools.vim/doc' -c qa!
```

# Usage
You can call a command or mapping on the current file.

# Command
## `Fixplurals`  
Call `fixplurals` on the current package.

## `Fillstruct`  
Call `fillstruct` on the current line of the file.

## `Fillswitch`  
Call `fillswitch` on the current line of the file.

# Mapping
## `<Plug>(reftools#fixplurals)`
mode: n
Call `fixplurals` on the current package.

## `<Plug>(reftools#fillstruct)`
mode: n
Call `fillstruct` on the current line of the file.

## `<Plug>(reftools#fillswitch)`
mode: n
Call `fillswitch` on the current line of the file.

# LICENSE
MIT License Copyright (c) 2019 tenfyzhong
