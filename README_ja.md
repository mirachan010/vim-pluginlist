# 見かけてプラグインをどんどんリストかしていくもの

どんどん追加していくつもり  

## ファイル構成
+ CheckedFiles/\*.list
いままでに確認した人間のリポジトリ

+ ./list
vim-pluginsのリスト本体

+ ./MakeInstallListForDein.sh
ReadMe/にはいってるプラグインのリストをfzfで選択しながらlist.tomlってファイルに出力してくれるやつ
fzfが必要です

+ ./ReadGitHub.sh
プラグインをどんどん追加してくれるシェルスクリプト
my-repositoriesが必要です。

```
./ReadGitHub.sh -u user
./ReadGitHub.sh -o orgs
```
