# autoflake.vim
[![GitHub tag](https://img.shields.io/github/tag/tenfyzhong/autoflake.vim.svg)](https://github.com/tenfyzhong/autoflake.vim/tags)
[![doc](https://img.shields.io/badge/doc-%3Ah%20autoflake-yellow.svg?style=flat)](https://github.com/tenfyzhong/autoflake.vim/blob/master/doc/autoflake.txt)

The autoflake.vim is a plugin to execute autoflake in the vim. It offer a
command named `Autoflake` to execute the autoflake program in-place. The
command can take a `!` modifier, it will show the diff in a new window named
autoflake. Besides, the command can take some arguments like the autoflake
program. Supported argument has `--expand-start-imports`,
    `--remove-all-unused-imports`, `--ignore-init-module-imports`,
    `--remove-duplicate-keys`, `--remove-unused-variables`. 

# Screenshots
![autoflake](https://tenfy.cn/picture/autoflake.gif)

# Install
I suggest you to use a plugin manager, such vim-plug or others.
- [vim-plug](https://github.com/junegunn/vim-plug)
```viml
Plug 'tenfyzhong/autoflake.vim', {'do': 'pip install autoflake'}
```
- Manual 
```sh
git clone https://github.com/tenfyzhong/autoflake.vim.git ~/.vim/bundle/autoflake.vim
echo 'set rtp+=~/.vim/bundle/autoflake.vim' >> ~/.vimrc
vim -c 'helptag ~/.vim/bundle/autoflake.vim/doc' -c qa!
```

# Contributions
Contributions and pull requests are welcome.

# LICENSE
MIT License Copyright (c) 2019 tenfyzhong
