# cow.vim
[![GitHub tag](https://img.shields.io/github/tag/tenfyzhong/cow.vim.svg)](https://github.com/tenfyzhong/cow.vim/tags)
![Vim Version](https://img.shields.io/badge/support-Vim%207.4.1557%E2%86%91or%20NVIM-yellowgreen.svg?style=flat)
[![doc](https://img.shields.io/badge/doc-%3Ah%20cow-yellow.svg?style=flat)](https://github.com/tenfyzhong/cow.vim/blob/master/doc/cow.txt)


close other window

# Screenshots
![](https://ws1.sinaimg.cn/large/69472223gy1g13hq8vrf0g20hs096dua.gif)

# Install
I suggest you to use a plugin manager, such vim-plug or other.
- [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'tenfyzhong/cow.vim'
```

- Manual
```sh
git clone https://github.com/tenfyzhong/cow.vim.git ~/.vim/bundle/cow.vim
echo 'set rtp+=~/.vim/bundle/cow.vim' >> ~/.vimrc
vim -c 'helptag ~/.vim/bundle/cow.vim/doc' -c qa!
```

# Usage
You must mapping the |cow-mapping| first, and then call your mapping in the
normal mode. For example, 
```viml
nmap <leader>ch <Plug>(cow-close-h)
nmap <leader>cj <Plug>(cow-close-j)
nmap <leader>ck <Plug>(cow-close-k)
nmap <leader>cl <Plug>(cow-close-l)
```

# Minimal setting
```viml
nmap <leader>ch <Plug>(cow-close-h)
nmap <leader>cj <Plug>(cow-close-j)
nmap <leader>ck <Plug>(cow-close-k)
nmap <leader>cl <Plug>(cow-close-l)
```
