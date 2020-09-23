# Many vim plugins
[‚É‚Ù‚ñ‚²](./README_ja.md)  
Plugins list for vim  
And you can make toml files for Shougo/dein.vim  

![](https://i.imgur.com/dNyZLlQ.png)  

## How to use
```bash
git clone https://github.com/mirachan010/vim-pluginlist
cd vim-pluginlist
bash ./MakeInstallListForDein.sh
```
it make list.toml so you need to read it in .vimrc some plugin manager(ex. Shougo/dein.vim  
sample .vimrc  

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

## files
+ ./MakeInstallListForDein.sh
Make list.toml by your select plugins  
Need fzf  

+ ./ReadGitHub.sh
Make pluginlist script  
Need mattn/my-repositories  

```
./ReadGitHub.sh -u user
./ReadGitHub.sh -o orgs
```
