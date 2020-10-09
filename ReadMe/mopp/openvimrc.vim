OpenVimrc.vim
=======
* * *

This is Vim Plugin to open smartly your .vimrc.  
This opens your vimrc into newtab when now buffer is modified.  
but this open your vimrc into now buffer when now buffer is NOT modified or that size is 0.

## Example 

```vim
nmap <silent> <Leader>ev <Plug>(openvimrc-open)
```


Installation
-------
* * *
NeoBundle 'mopp/openvimrc.vim'
