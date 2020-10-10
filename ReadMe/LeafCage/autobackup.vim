#autobackup.vim
ファイルを保存する度に指定ディレクトリにバックアップを残す。

###概要
*autobackup* はファイルを保存する度に過去のファイルをナンバリングして指定したディレクトリに自動保存するプラグインです。  
例えば、"test.txt" というファイルを保存する度に指定したディレクトリに "%home%user%test.txt.0001" "%home%user%test.txt.0002" という名前でバックアップが作成されます。   
`savevers.vim`をリスペクトして作成されましたが、オリジナルより軽量です。  

最新版:  
https://github.com/LeafCage/autobackup.vim  


##使い方
このプラグインは Vimのオプション 'backupdir' が空だと動きません。はじめに 'backupdir' が設定されているかどうかご確認ください。  

`g:autobackup_backup_dir`でバックアップする場所を指定します。  

```vim
let g:autobackup_backup_dir = "~/mybackup"
```


`g:autobackup_backup_limit` でバックアップの量を制限できます。この値を超えると古いものから削除されます。  

```vim
let g:autobackup_backup_limit = 50
```
