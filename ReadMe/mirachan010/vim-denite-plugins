# vim-denite-plugins
[にほんご](./README_jp.md)  
Use [pluginlist](https://github.com/mirachan010/vim-pluginlist) in denite.nvim
like market for vim-plugins

## install
use dein.vim
```toml
[[plugins]]
repo = 'mirachan010/vim-denite-plugins'
depends = ['denite.nvim']
on_source = ['denite.nvim']

[[plugins]]
repo = 'mirachan010/vim-pluginlist'
depends = ['denite.nvim']
on_source = ['vim-denite-plugins']
```

## how to use
`:Denite PluginsList`
if you do_action in denite.
This plugin make ~/list.toml and write plugin name.

## option
```vim
"default path is ~/list.toml
let g:install_plugin_list="path to tomlfiles"

"if you installed skanehira/gh.vim you can use.
let g:pluginlist_use_gh=1 "default 0
```
