#cmdlineplus.vim
コマンドラインを改造するキーマッピングを提供する

##概要
*cmdlineplus* はコマンドラインで使える幾つかのキーマッピングを提供します。以下の機能を提供します。  

- カーソルの移動(単語単位で移動、ノーマルモードの `f{char}` のような移動)
- ノーマルモードでの `df{char}` のような削除
- Emacsにおけるキルのようにカーソル位置から後ろを削除
- ある文字をバックスペースでエスケープする
- 現在のコマンドラインに入力されている文字列をレジスタにセットする

最新版:  
https://github.com/LeafCage/cmdlineplus.vim  


##使い方
キーマッピングを定義して下さい。  
例:  

```vim
cmap <C-g> <Plug>(cmdlineplus-forward-word)
cmap <C-b> <Plug>(cmdlineplus-backward-word)
cmap <C-\><C-k>  <Plug>(cmdlineplus-killline)
cmap <C-\><C-\>  <Plug>(cmdlineplus-escape-special)
cmap <C-\>i  <Plug>(cmdlineplus-escape-input)
cmap <C-\><C-y>  <Plug>(cmdlineplus-yank)
cmap <C-\><C-c>  <Plug>(cmdlineplus-yank-clipboard)

cmap <C-\>f  <Plug>(cmdlineplus-f)
cmap <C-\>F  <Plug>(cmdlineplus-F)
cmap <C-\>t  <Plug>(cmdlineplus-t)
cmap <C-\>T  <Plug>(cmdlineplus-T)
cmap <C-\>;  <Plug>(cmdlineplus-;)
cmap <C-\>,  <Plug>(cmdlineplus-,)
cmap <C-\>d  <Plug>(cmdlineplus-df)
cmap <C-\>D  <Plug>(cmdlineplus-dF)
```
