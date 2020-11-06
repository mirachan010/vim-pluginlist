# today-first.vim

1日一回、Vimの起動時に実行したいコマンドを登録できるプラグインです。

vimrcに以下を追加してください。
* 別途、NeoBundle、vimprocが必要になります。
```
NeoBundle 'AtsushiM/thread.vim'
NeoBundle 'AtsushiM/today-first.vim'
autocmd VimEnter * TodayFirstCmd
```

## :EditTodayFirstCmd
1日1回起動されるvimscriptを設定します。

## :ExecuteTodayFirstCmd
設定されたコマンド実行します。
このコマンドは1日1回の制限に引っかかりません。
