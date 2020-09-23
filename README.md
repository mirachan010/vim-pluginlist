# Many vim plugins
[‚É‚Ù‚ñ‚²](./README_ja.md)

![](https://i.imgur.com/dNyZLlQ.png)  

Plugins list for vim
And you can make toml files for Shougo/dein.vim

## How to use
```bash
git clone https://github.com/mirachan010/vim-pluginlist
cd vim-pluginlist
bash ./MakeInstallListForDein.sh
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
