vim-macvim-transparency
=======================

Change MacVim's window transparency throgh keymap.
To use transparency, **enable 'CoreText’ rendering** feature on configuration preference.

## Anime
![Movie](https://github.com/t9md/t9md/blob/master/img/vim-macvim-transparency.gif?raw=true)

## Help
[See Help](https://github.com/t9md/vim-macvim-transparency/blob/master/doc/macvim_transparency.txt)

## config example
This plugin don't set default keymap.
Need to configure explicitly in your `.vimrc`.

    let g:macvim_transparency_step = 10
    let g:macvim_transparency_roller = [0, 50, 100]

    " transparent
    nmap <D-Up>   <Plug>(macvim-transparency-inc)
    " opaque
    nmap <D-Down> <Plug>(macvim-transparency-dec)
    " roll from 
    nmap <F10>    <Plug>(macvim-transparency-roll)

    imap <D-Up>   <Plug>(macvim-transparency-inc)
    imap <D-Down> <Plug>(macvim-transparency-dec)
    imap <F10>    <Plug>(macvim-transparency-roll)

    xmap <D-Up>   <Plug>(macvim-transparency-inc)
    xmap <D-Down> <Plug>(macvim-transparency-dec)
    xmap <F10>    <Plug>(macvim-transparency-roll)
