# vital-reunions

Async processing frame work.

## Requirement

* __[vim-jp/vital.vim](https://github.com/vim-jp/vital.vim)__
* __[Shougo/vimproc.vim](https://github.com/Shougo/vimproc.vim)__

## Example

```vim
" 処理をブロックせずに任意のプロセスを実行する

let s:Reunions = vital#of("vital").import("Reunions")

" 非同期でプロセスを実行
let s:ruby = s:Reunions.process("ruby -e 'sleep 2; print 42'")

" 実行したプロセスが終了したら呼ばれる
" 実行結果は output に渡される
function! s:ruby.then(output, ...)
	echo a:output
endfunction


augroup reunions-example
	autocmd!
	" プロセスの更新を行うための関数
	" 任意のタイミングで定期的に呼び出す必要がある
	" このタイミングで s:ruby.then が呼び出される
	autocmd CursorHold * call s:Reunions.update_in_cursorhold(1)
augroup END
```


