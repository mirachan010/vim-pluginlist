Window Ctrl Plugin for VIM
==========================

Use `<leader>wc` to toggle window control

`h,j,k,l` is for moving window position.

Arrow top,left,down,right is for resizing window size.

- gg: snap window to grid
- gh: resize to left side
- gl: resize to right side

Installation
==============

Vundle:

```vim
Plugin 'c9s/winctl'
```


Configurations
==============

adjust this in your `.gvimrc`

    let g:screen_cols = 177
    let g:screen_rows = 48

    let g:screen_w = 1280
    let g:screen_h = 800

    let g:window_ctrl_h_inc = 5   " columns
    let g:window_ctrl_v_inc = 3   " lines
    let g:window_ctrl_x_inc = 30
    let g:window_ctrl_y_inc = 30

