alpaca_wordpress.vim
====================

## 機能

- wordpressのsyntax追加
- wordpressのau Userの追加

## 設定

```.vimrc:vim
" シンタックスを有効化
let g:alpaca_wordpress_syntax = 1
" Wordpressの規約に沿った設定を追加
let g:alpaca_wordpress_use_default_setting = 1
```
`

## au User

wordpressプロジェクト内のみで使えるauの追加

`au BufEnterWordpress`
`au BufLeaveWordpress`
