#unite-choosewin-actions


##Example
```vim
" 選択しないウィンドウの場合は 1 を返す
" それ以外は 0 を返す
" choosewin/open 時は unite, vimfiler, vimshell を選択しない
function! s:choosewin_is_ignore_window(action, winnr)
	if a:action ==# "open"
		return index(["unite", "vimfiler", "vimshell"], getbufvar(winbufnr(a:winnr), "&filetype")) >= 0
	else
		return 0
	endif
endfunction
```


