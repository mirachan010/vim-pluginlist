# RunOyoNvim

## introduction
Neovim用のTwitterクライアント RunOyoNvim
使用にはTwitterAPIの取得が必要です


## install
- dein
```
[[plugins]]
repo = 'higashi000/RunOyoNvim'
```

## Initial setting
- 下記の設定を`init.vim`に記述するか書いたファイルをinit.vimで読み込んでください
  - `Your Consumer key`, `Your Consumer key secret`, `Your Access token`, `Your Access token secret`は自分のアカウントの物に書き換えてください
```vimscript
let g:consumer_key = "Your Consumer key"
let g:consumer_secret = "Your Consumer key secret"
let g:access_token = "Your Access token"
let g:access_token_secret = "Your Access token secret"
```

- 以下のライブラリをインストールしてください
  - Twitter Ruby Gem
  - neovim ruby host

## How to use
- Tweet
```
:RunOyoTweet `ツイート内容`
```

- メンション
```
:RunOyoTweet `ユーザーID` `リプライの内容`
```

- ツイートに語尾を追加
`init.vim`に以下を記述してください
```
let g:ending = '語尾にしたいワード'
```

- TLの取得
```
:RunOyoTL
```

- ワード検索
```
:RunOyoSearch `検索ワード`
```
