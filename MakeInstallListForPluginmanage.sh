#!/bin/bash
read -p "s" START
read -p "e" END
while :
do
    cd ./ReadMe
    package=$( fzf -m --preview "head -100 {}" | awk '{print $1}' )
    cd ../
    if [ -n "$package" ]; then
        echo "$package" | sed -e "s/$/${END}/" -e "s/^/${START}/" >> ~/list.vim
    else
        break
    fi
done
