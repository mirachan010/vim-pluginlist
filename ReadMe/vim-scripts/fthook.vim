fthook.vim
==================================
provide very simple filetype hook facility.

purpose
----------------------------------
### ensure your favorite keymap is always available
Overwite keymap plugin defined with your keymap.  
For example, I use following keymap to move between windows.  

    nnoremap <silent> <C-h> :wincmd h<CR>
    nnoremap <silent> <C-l> :wincmd l<CR>
    nnoremap <silent> <C-k> :wincmd k<CR>
    nnoremap <silent> <C-j> :wincmd j<CR>

with this keymap, I can move window to window with `<C-hlkj>`  
But sometime, plugin I installed overwrite one of these keymap.  
To ensure `<C-hlkj>` combination is always available, set buffer local keymap after plugin have set up their keymap.  
This could be done with `autocmd Filetype` but setup this autocmd each time I install new plugin is nonsense.  

To do that, refer configuration example  

## simplify filetype specific setting

# Configuration example
`g:fthook` is dictionary of  

* key: `&filetype` but '-' is translated to '_'
* value: function which is called at `autocmd Filetype` event

the key '_' is special filetype which is always called, means `global`.  

    let g:fthook = {}
    function! g:fthook._()
        " ensure move cursor between windows with <C-hlkj> unless
        " &filetype is 'nerdtree'
        if &ft != 'nerdtree'
            nnoremap <buffer> <silent> <C-h> :wincmd h<CR>
            nnoremap <buffer> <silent> <C-l> :wincmd l<CR>
            nnoremap <buffer> <silent> <C-k> :wincmd k<CR>
            nnoremap <buffer> <silent> <C-j> :wincmd j<CR>
        endif
    endfunction
    function! g:fthook.help()"{{{
      nnoremap <buffer> <Return> <C-]>
      nnoremap <buffer> <BS>     <C-t>
      nnoremap <buffer> .j  /\|[^ \|]\+\|<CR>
    endfunction"}}}
    function! g:fthook.ruby()"{{{
      compiler ruby
      noremap  <buffer> <silent> <F5> moHmt:%call Xmpfilter()<CR>'tzt`o
      inoremap <buffer> <silent> <F5> <Esc>moHmt:%call Xmpfilter()<CR>'tzt`oa
      noremap  <buffer> <silent> <F4> :call XmpCommentToggle()<CR>
      inoremap <buffer> <silent> <F4> <C-o>:call XmpCommentToggle()<CR>

      noremap  <buffer> <silent> <M-r> moHmt:%call Xmpfilter()<CR>'tzt`o
      inoremap <buffer> <silent> <M-r> <Esc>moHmt:%call Xmpfilter()<CR>'tzt`oa
      vnoremap <buffer> <silent> <M-r> :call Xmpfilter()<CR>
      noremap  <buffer> <silent> <M-m> :call XmpCommentToggle()<CR>
      inoremap <buffer> <silent> <M-m> <C-o>:call XmpCommentToggle()<CR>
      map <buffer> <M-j>   <Plug>BlockToggle
      call OverwiteRubyFindFileMapping()
    endfunction"}}}
    function! g:fthook.nerdtree()"{{{
        nmap <buffer> v go
        nnoremap <silent> <buffer>  f    :call <SID>normal_other("80j")<CR>
        nnoremap <silent> <buffer>  b    :call <SID>normal_other("80k")<CR>
        nnoremap <silent> <buffer>  ~    :<C-u>exe 'NERDTree'.expand("$HOME")<CR>
        nnoremap <silent> <buffer>  'g    :<C-u>NERDTreeFromBookmark gems<CR>
        nnoremap <silent> <buffer>  'b    :<C-u>NERDTreeFromBookmark vimbundle<CR>
        nnoremap <silent> <buffer>  'v    :<C-u>NERDTreeFromBookmark vim<CR>
    endfunction"}}}
    function! g:fthook.lingr_messages()"{{{
        nmap <buffer> i <Plug>(lingr-messages-show-say-buffer) 
    endfunction"}}}
    function! g:fthook.unite() "{{{
        nmap <buffer>m       <Plug>(unite_toggle_mark_current_candidate)
        vmap <buffer>m       <Plug>(unite_toggle_mark_selected_candidates)
        imap <buffer> <C-g>  <Plug>(unite_exit)
        nmap <buffer> <C-g>  <Plug>(unite_exit)
        imap <buffer> <C-e>     <Plug>(unite_narrowing_path)
        nmap <buffer> <C-e>     <Plug>(unite_narrowing_path)
        nmap <buffer> <C-z>  <Plug>(unite_toggle_transpose_window)
        imap <buffer> <C-z>  <Plug>(unite_toggle_transpose_window)
                    " <Plug>(unite_toggle_transpose_window)  :<C-u>call <SID>toggle_transpose_window()<CR>

        " imap <silent> <buffer> <M-j>  <Plug>(unite_rotate_next_source)
        " imap <silent> <buffer> <M-k>  <Plug>(unite_rotate_previous_source)
        nmap <silent> <buffer> <M-j>  <Plug>(unite_rotate_next_source)
        nmap <silent> <buffer> <M-k>  <Plug>(unite_rotate_previous_source)

        nnoremap <silent> <buffer> <expr> B    unite#do_action('bookmark')
        nnoremap <silent> <buffer>  f    :call <SID>normal_other("80j")<CR>
        nnoremap <silent> <buffer>  b    :call <SID>normal_other("80k")<CR>
        nnoremap <silent> <buffer>  J    :call <SID>normal_other("_C-e")<CR>
        nnoremap <silent> <buffer>  K    :call <SID>normal_other("\<C-y>")<CR>
        nnoremap <silent> <buffer>  zR   :call <SID>normal_other("zR")<CR>
        nnoremap <silent> <buffer>  zM   :call <SID>normal_other("zM")<CR>
        nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('below')
        inoremap <silent> <buffer> <expr> <C-j> unite#do_action('below')
        nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('right')
        inoremap <silent> <buffer> <expr> <C-l> unite#do_action('right')

        inoremap <silent> <buffer> <expr> H unite#do_action('vimshell')
        nnoremap <silent> <buffer> <expr> H unite#do_action('vimshell')

        nnoremap <silent> <buffer> <expr>     r <Plug>(unite_redraw)
        inoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
        nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
        nnoremap <silent><buffer><expr> u unite#do_action('persist_open')
    endfunction  "}}}
    function! g:fthook.vimshell() "{{{
        inoremap <buffer><silent> <C-p> <C-o>:<C-u>Unite file_mru -buffer-name=files<CR>
        call vimshell#altercmd#define('g', 'git')
        call vimshell#altercmd#define('i', 'iexe')
        call vimshell#altercmd#define('l', 'll')
        call vimshell#altercmd#define('ll', 'ls -l')
    endfunction "}}}
