NyaruLine.vim
=========

It is Vim Plugin for Changing Statusline Dynamically.


Configure
=========
Write below in your vimrc.

    function! g:nyaruline_after_init_hook(controler)
        let g:vimfiler_force_overwrite_statusline = 0
        call a:controler.default.n.add_atom(-1, '%{exists("g:loaded_vimfiler")?vimfiler#get_status_string():""}',  'NYARU_VIMF_N', a:controler.get_highlight_param('164a84', 'c1d8ac', 'NONE'), 'left')
        echo a:controler.default.n.get_statusline_expr()
    endfunction

g:nyaruline_after_init_hook is called when load default nyaruline settings

Sample Image
=========
![SS](./ss1.png)
![SS](./ss2.png)
