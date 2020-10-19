[![Powered by vital.vim](https://img.shields.io/badge/powered%20by-vital.vim-80273f.svg)](https://github.com/vim-jp/vital.vim)

# vim-pludate
Auto update for vim plugin

# Install
for vim-plug<br>
```
Plug 'higashi000/vim-pludate'
```

for dein.vim<br>
```
call dein#add('higashi000/vim-pludate')
```

# Usage
## Set config file
Please set your vim-pludate config directory.(default `$HOME/.vim/`)<br>

Add to vimrc.<br>
```
let g:pludateConfigPath='YOUR_PLUDATE_CONFIG_PATH'
```

example<br>
```
let g:pludateConfigPath='/home/higashi/.vim/'
```

After, make `pludateConfig.json` in your pludate config path.<br>
```
$ touch `YOUR_PLUDATE_CONFIG_PATH/pludateConfig.json`
```

## Set update command
```
let g:pludateUpdateCmd = 'YOUR_PLUGIN_UPDATE_COMMAND'
```

for vim-plug<br>
```
let g:pludateUpdateCmd = ':PlugUpdate'
```

for dein.vim<br>
```
command UpdatePlugin call dein#update()
let g:pludateUpdateCmd = ':UpdatePlugin'
```

## Change update interval

Default update interval is one week.<br>
If you want to change update interval, Please set `let g:pludateInterval`.<br>

example (Update for every two days)<br>
```
let g:pludateInterval = 2
```
