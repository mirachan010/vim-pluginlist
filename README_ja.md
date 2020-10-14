# 見かけてプラグインをどんどんリストかしていくもの  

どんどん追加していくつもり  

## 使い方  
```bash
git clone https://github.com/mirachan010/vim-pluginlist
cd vim-pluginlist
bash ./MakeInstallListForDein.sh
```
fzfで入れたいプラグインを選んで<CR>でリストに追加！  
＜ESC>で終了する  
リストに追加してあるかのチェックはしていないので、同じのがどんどんと並ばないように注意を  

sampleとしてShougo/dein.vimを使用した場合の読み込ませるための.vimrcをおいておきます

```vim:~/.vimrc
let s:dein_dir = expand('~/.cache/vim/dein/')
let g:rc_dir    = expand('~/vim-pluginlist/')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '\dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  let s:toml      = g:rc_dir . 'list.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif

let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
```

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

+ ./rank.sh  
listの中でユーザー名の個数を数えて簡易的なランキングをつくるもの  
あくまで、listのなかにあるもの限定で作るからあんまり正しくない  

+ ./rank  
作成済みファイル  
