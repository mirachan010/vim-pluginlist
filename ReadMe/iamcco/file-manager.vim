## file-manager.vim

Denite source for file management

![screenshot](https://user-images.githubusercontent.com/5492542/32145690-e55831c4-bd07-11e7-9d15-6262ff6251ae.png)

## Install

with `vim-plug`:

```
Plug 'Shougo/denite.nvim'
Plug 'iamcco/file-manager.vim'
```

## Usage

```
:Denite file_manager
```

with more `add` `delete` `move` `copy` `rename` actions than the Denite `directory_rec` source

> for directory default action is `narrow` and the behavior is like the `narrow` action in `file` source
> will list the directory and file under the select directory
