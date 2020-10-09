vim-paste-marker
==================================
Current state is alpha relase.

example
----------------------------------
## default keymap( fom me! mac key <D-> prefix)

put mark
    nnoremap <D-p> :call Pm.put_mark()<CR>

peep target mark
    nnoremap <D-M> :call Pm.next_target()<CR>

Yank visualy selected text and immediately Paste to marked target
    vnoremap <D-M> :<C-u>call Pm.next_target()<CR>gv

move target mark (useless if you use only one mark)
    vnoremap <D-P> :<C-u>call Pm.next_target()<CR>gv

Paste and clear all mark, don't return yanked position
    vnoremap <D-p>   y:call Pm.paste_next(1)<CR>:call Pm.clear_all()<CR>

Paste and return yanked position. 
    vnoremap <D-P>  y:call Pm.paste_next(0)<CR>

clear all mark
    nnoremap <D-D> :call  Pm.clear_all()<CR>

Useful Scenario
----------------------------------
## Gather source fragment scatterd to several file to marked target, then start modfying.
paste mark with `<D-p>` to your working file. ex) working.rb  
then explore several file , each time you find useful code, you can use  
`<D-P>` to paste selected text to working file.  
And use `<D-p>` when you want to back to marked place.  

Option
----------------------------------
default number of mark is `1`. but you can change number of mark to be used.

    let g:PasteMarkerSize = 2

you can move target between marks with `<D-M>`.
