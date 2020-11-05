# vim-pluginlist
[にほんご](./README_ja.md)  
Plugins list for vim  
And you can make toml files for Shougo/dein.vim  
You can make .vim files for other plugin manager

![](https://i.imgur.com/dNyZLlQ.png)  

## How to use
```bash
git clone https://github.com/mirachan010/vim-pluginlist
cd vim-pluginlist
```

### If you use dein.vim
```bash
bash ./MakeInstallListForDein.sh
# you can select in fzf and make ./list.toml
```
it make list.toml so you need to read it in .vimrc some plugin manager(ex. Shougo/dein.vim  
sample .vimrc  

```vim
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
### if you use other plugin manager
```bash
bash ./MakeInstallListForPluginmanage.sh
# It anser What need for make plugin list
# if you use vim-plug you need to input 
# "Before plugin name">> Plug'
# "After  plugin name">> '
# you can select in fzf and make ./list.vim
```

it make list.vim so you need to read it in .vimrc some plugin manager(ex. junegunn/vim-plug)
```vim
call plug#begin('~/.vim/plugged')
source /path/to/vim-pluginlist/list.vim
call plug#end()
```
## files
+ ./MakeInstallListForDein.sh
Make list.toml by your select plugins  
Need fzf  

+ ./MakeInstallListForPluginmanage.sh
Make list.vim by your select plugins  
Need fzf  

+ ./ReadGitHub.sh
Make pluginlist script  
Need mattn/my-repositories  

```
./ReadGitHub.sh -u user
./ReadGitHub.sh -o orgs
```
