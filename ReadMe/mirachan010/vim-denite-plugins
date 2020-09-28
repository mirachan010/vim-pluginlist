# vim-denite-plugins
[にほんご](./README_jp.md)
[pluginlist](https://github.com/mirachan010/vim-pluginlist)をdenite経由で使える感じのやつ  
これがあればvim内である程度のプラグインをさくっといれることができる。

## インストール方法
dein.vimを使う場合
```toml
[[plugins]]
repo = 'mirachan010/vim-denite-plugins'
depentds = ['denite.nvim']
on_source = ['denite.nvim']

[[plugins]]
repo = 'mirachan010/vim-pluginlist'
depentds = ['denite.nvim']
on_source = ['vim-denite-plugins']
```

## 使い方
`:Denite PluginsList`
Deniteでdo_actionを走らせた時、指定したファイルもしくは、~/list.tomlに貼り付けてくれる。

## オプション
デフォルトでは ~/list.toml　になるようになっています。
```
g:install_plugin_list="path to tomlfiles"
```
