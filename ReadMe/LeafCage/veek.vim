#veek.vimの参考程度の紹介
デバッグのために変数などの値を記録するもの。  
この説明書はプラグイン完成直後に書いたものなので最新版とは限らない。  
説明書を更新するのが面倒くさくてそのままにしている可能性がある。  
そもそも筆者はmarkdownに不得手だ。  
以上のことを踏まえて参考程度にお願いします。  

##例
```vim
let recoded = {'success': 1}  
```


###変数を使うやり方  
```vim
let g:test = recoded  


echo g:test 
```
出力 #=>
```
{'success': 1}
```


###echomsgを使うやり方
```vim
echomsg printf('%s の中身は %s',  
    \ 'recoded', string(recoded)) 


mess  
```
出力 #=>
```
recoded の中身は {'success': 1}
```  


###本プラグインを使うやり方  
```vim
Veek 1, recoded 


Veek 1  
```
出力 #=>
```
 [0]  1: "recoded"                                     (functio)
         {'success': 1}
```
※フォーマットは変更される可能性があります。


##Veek コマンド (plugin/veek.vimより抜粋)
注意！
- `:Veek`コマンドは引数の区切りに空白文字ではなく,(コンマ)を使う
- このコマンドにVimのコメント("で始まるやつ)を付けることは出来ない
- スクリプトローカル変数を扱うことは出来ない


"記録  
- Veek {num}, {arg}           ; {arg}をVeek{num}に記録する ※{num}は正の整数である  
- Veek {-num1}, {num2}, {arg} ; {arg}を{num1}から{num2}までのVeek全てに記録する  
- Veek {[num1,num2]}, {arg}   ; {arg}を{num1}から{num2}までのVeek全てに記録する  
- Veek {num}, {arg}, {"msg"}  ; {"msg"}をつけて{arg}をVeek{num}に記録する  
- Veek {-num1}, {num2}, {arg}, {"msg"}  ; {"msg"}をつけて{arg}を{num1}から{num2}までのVeek全てに記録する  
- Veek {[num1,num2]}, {arg}, {"msg"}  ; {"msg"}をつけて{arg}を{num1}から{num2}までのVeek全てに記録する  

"閲覧  
- Veek                  ; 有効な全てのVeekの現在ステータスを見る(定義順)  
- Veek!                 ; 有効な全てのVeekの現在ステータスを見る(番号順)  
- Veek {num}            ; Veek{num}の現在ステータスを見る  
- Veek! {num}           ; Veek{num}の過去から現在までのステータスを見る  
- Veek {-num1}, {-num2} ; Veek{num1}の{num2}つ過去から現在までのステータスを見る  
- Veek {[num1,-num2]}   ; Veek{num1}の{num2}つ過去から現在までのステータスを見る  
- Veek {-num}           ; {num}以降のVeekの現在ステータスを見る(定義順)  
- Veek! {-num}          ; {num}以降のVeekの現在ステータスを見る(番号順)  
- Veek {[num]}          ; {num}以降のVeekの現在ステータスを見る(定義順)  
- Veek! {[num]}         ; {num}以降のVeekの現在ステータスを見る(番号順)  
- Veek {[num1,num2]}    ; {num1}から{num2}までのうち有効なVeek全ての現在ステータスを見る(定義順)  
- Veek {-num1}, {num2}  ; {num1}から{num2}までのうち有効なVeek全ての現在ステータスを見る(定義順)  
- Veek! {[num1,num2]}   ; {num1}から{num2}までのうち有効なVeek全ての現在ステータスを見る(番号順)  
- Veek! {-num1}, {num2} ; {num1}から{num2}までのうち有効なVeek全ての現在ステータスを見る(番号順)  

"削除  
- Veek 0, {num}               ; {num}Veekを削除する  
- Veek 0, {num1}, {num2}      ; {num1}から{num2}のVeekを削除する  
- Veek 0, [{num1},{num2}]     ; {num1}から{num2}のVeekを削除する  
- Veek 0, {-num}              ; {num}から最後までのVeekを削除する  
- Veek 0, {[num]}             ; {num}から最後までのVeekを削除する  
- Veek 0, 0                   ; 全てのVeekを削除する  



##ある変数をveekのインターフェイスにする(plugin/veek.vimより抜粋)
- これはスクリプトローカル変数にも対応している

- let a = Veek()              ; 自動で番号を付けてVeekインターフェイスを作成  
- let a = Veek({name})        ; 名前{name}を付けてVeekインターフェイスを作成  

- call a.set({arg})           ; {arg}をVeekに記録  
- call a.set({arg}, {msg})    ; {msg}を付けて{arg}をVeekに記録  
- call a.view()               ; Veekの現在ステータスを見る  
- call a.view(2)              ; 2つ前のVeekのステータスを見る  
- call a.view(2, 0)           ; 2つ前から現在までのVeekのステータスを見る  
- call a.view(1, 4)           ; 1つ前から4つ前までのVeekのステータスを見る  
- call a.delete()             ; Veekを削除する  

- Veek {name}, {arg}          ; {arg}をVeek{name}に記録する  
- Veek {name}, {arg}, {"msg"} ; {"msg"}をつけて{arg}をVeek{num}に記録する  
- Veek {name}                 ; Veek{name}の現在ステータスを見る  
- Veek 0, {name}              ; Veek{name}を削除する  
