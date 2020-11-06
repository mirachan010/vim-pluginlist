# Vake.vim

vimscriptでMake(Makefile)のようなコマンドを提供します。
Vakefileを設置すれば
```
:Vake
```
でVakefileに書かれているvimscriptを実行します。

現在編集中のファイルからディレクトリを逆上ってVakefileを検索し、
最初に見つけたVakefileの地点でVakeします。

## install
```
NeoBundle 'AtsushiM/search-parent.vim'
NeoBundle 'AtsushiM/Vake.vim'
```

## コマンド
### :VakeCreate
現在のディレクトリにVakefileを作成します

### :VakeEdit
Vakefileを検索し、開きます
Vakefileが存在しない場合、何もしません

### :VakeTemplate
VakeCreateで生成されるVakefileのテンプレートを編集します

## 設定例
```
" 指定した拡張子のファイル保存時にmake実行
" 例：jsファイルで実行する場合
let g:vake_autofile = ['js']

" 例：js,phpで実行する場合
let g:vake_autofile = ['js', 'php']

" ディレクトリを遡る最大数
let g:vake_cdloop = 5
```
