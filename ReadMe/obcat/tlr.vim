# tlr.vim

![tlr](https://user-images.githubusercontent.com/64692680/96217376-69036d80-0fbd-11eb-9eb2-bdc9eb0e850b.gif)

This plugin provides the following `<Plug>` mappings:

```
<Plug>(tlr-down)
    Resize current window downward.

<Plug>(tlr-up) 
    Resize current window upward.

<Plug>(tlr-left)
    Resize current window leftward.

<Plug>(tlr-right)
    Resize current window rightward.
```

If you add the following settings to vimrc, you can resize the window as shown in the Gif above:

```vim
nmap <C-Down>  <Plug>(tlr-down)
nmap <C-Up>    <Plug>(tlr-up)
nmap <C-Left>  <Plug>(tlr-left)
nmap <C-Right> <Plug>(tlr-right)
```
