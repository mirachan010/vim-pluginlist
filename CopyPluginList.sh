#!/bin/bash
sed list -e "s/$/\'/" > list.toml
sed -e "s/^/[[plugins]]\nrepo='/" -i list.toml
cp ~/vim-pluginlist/list.toml ~/dotfiles/common/vim/list.toml
rm ~/vim-pluginlist/list.toml
