# Smart-tabline.vim
[![GitHub tag](https://img.shields.io/github/tag/tenfyzhong/smart-tabline.vim.svg)](https://github.com/tenfyzhong/smart-tabline.vim/tags)
![Vim Version](https://img.shields.io/badge/support-Vim%207.0.203%E2%86%91or%20NVIM-yellowgreen.svg?style=flat)

This plugin is fork from [vim-ctrlspace/vim-ctrlspace](https://github.com/vim-ctrlspace/vim-ctrlspace). 
It remove all features but not tabline. You can't use it with vim-ctrlspace together.  

This plugin maintains buffers for the tab it belongs to.  

For example, you have two tabs. The first tab has 2 buffers, `a.txt` and `b.txt`. 
The second tab has 2 buffers, `1.txt` and `2.txt`. The tabline only show `a.txt` 
and `b.txt` when you are in the first tab. If you go to the second tab use `gt`, 
The tabline will show `1.txt` and `2.txt`.  

# Screenshot
![tabline](http://wx3.sinaimg.cn/mw690/69472223gy1fhw3oe5a43g20hs073n3d.gif)

Integrates with [airline][]  
![tabline-airline](http://wx4.sinaimg.cn/mw690/69472223gy1fhw3of6c7yj20gh06jjrh.jpg)

# Install
I suggest you to use a plugin manager, such vim-plug or other.
- [vim-plug][]
```viml
Plug 'tenfyzhong/smart-tabline.vim'
```
- Manual
```
git clone https://github.com/tenfyzhong/smart-tabline.vim.git ~/.vim/bundle/smart-tabline.vim
echo 'set rtp+=~/.vim/bundle/smart-tabline.vim' >> ~/.vimrc
vim -c 'helptag ~/.vim/bundle/smart-tabline.vim/doc' -c qa!
```

# Mapping
### `<Plug>(ctrlspace#mapping#NextBuffer)`
The mapping to edit next buffer in the tabline. eg:  
```viml
nmap <leader>l <Plug>(ctrlspace#mapping#NextBuffer)
```

### `<Plug>(ctrlspace#mapping#PreviouBuffer)`
The mapping to edit previous buffer in the tabline. eg:  
```viml
nmap <leader>h <Plug>(ctrlspace#mapping#PreviousBuffer)
```

# Contributions 
Contributions and pull requests are welcome.

# LICENSE
MIT License Copyright (c) 2017 tenfyzhong

[vim-plug]: https://github.com/junegunn/vim-plug
[airline]: https://github.com/vim-airline/vim-airline
