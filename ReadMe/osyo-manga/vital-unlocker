# vital-unlocker

オプションの設定などを保存・復元するためのライブラリ

## Example

```vim
let s:Rocker = vital#of("vital").import("Unlocker.Rocker")


let g:vital_unlocker_example_simple = 42
let s:dict = { "value" : 42 }

" 保存する対象を指定してロックする
" 設定できる値
" - オプション名(l: でローカルオプション)
" - グローバル変数名
" - 辞書、リストの値
let s:locker = s:Rocker.lock("concealcursor", "l:conceallevel", "g:vital_unlocker_example_simple", s:dict)

" 値の変更
let &concealcursor = "nvic"
let &l:conceallevel = 3
let g:vital_unlocker_example_simple = 0
let s:dict.value = 0

" 変更した値を戻す
call s:locker.unlock()

echo g:vital_unlocker_example_simple
echo s:dict
```

