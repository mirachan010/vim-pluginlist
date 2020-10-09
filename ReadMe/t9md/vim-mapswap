# mapswap swap keymap temporarily

Since we spend more time to reading 'code' than editing 'code'.
So to save your weak pinky, this plugin helps you temporarily swap keymap and 
restore to original keymap.

* [help](https://github.com/t9md/vim-mapswap/blob/master/doc/mapswap.txt)
* See also [kana/vim-submode](https://github.com/kana/vim-submode) and [It's discussion](https://github.com/kana/vim-submode/issues/1)

# mapswap swap keymap temporarily
    "==== JUST_A_EXAMPLE to show 'mapswap#setup()' effect
    let g:mapswap_table = {}
    function! g:mapswap_table.foo()
      call mapswap#noremap('n', '', 'a', ':echo "foo"<CR>')
    endfunction
    function! g:mapswap_table.bar()
      call mapswap#noremap('n', '', 'a', ':echo "bar"<CR>')
    endfunction
    call mapswap#setup()

    " you can simply use <Plug>(mapswa-{name}) virtual keymap to define keymap
    nmap ,f <Plug>(mapswap-foo)
    nmap ,b <Plug>(mapswap-bar)
    "==== JUST_A_EXAMPLE END

    " you can swap keymap temporarily with '<F9>' to save your pinky!
    let g:mapswap_table = {}
    function! g:mapswap_table.view()
      call mapswap#noremap('n' , '' , 'f'       , '<C-f>')
      call mapswap#noremap('n' , '' , 'b'       , '<C-b>')
      call mapswap#noremap('n' , '' , 'u'       , '<C-u>')

      "second 'n' represent <nowait>. its avoid my global surround-vim mapping wait another key
      call mapswap#noremap('n' , 'n' , 'd'       , '<C-d>') "
      call mapswap#noremap('n' , '' , '<CR>'    , '<C-]>')
      call mapswap#noremap('n' , '' , '<BS>'    , '<C-t>')
      call mapswap#noremap('n' , 'n' , '<Space>' , '<C-d>')

      " you need #map for <Plug> virtual keymap
      call     mapswap#map('n' , '' , 't'       , '<Plug>(quickhl-tag-toggle)')
      call     mapswap#map('n' , '' , 'a'       , '<Plug>(altr-forward)')
    endfunction
	  call mapswap#setup()
    nmap <F9>   <Plug>(mapswap-view)
    nmap <S-F9> <Plug>(mapswap-dump)
    " if you like more quicker keymap, idon't need '' since `` is always my favorite.
    " nmap '' <Plug>(mapswap-view)
