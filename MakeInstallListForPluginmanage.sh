#!/bin/bash
read -p "Before plugin name>>" START
read -p "After  plugin name>>" END
while :
do
    cd ./ReadMe
    package=$( fzf -m --preview "head -100 {}" | awk '{print $1}' )
    cd ../
    if [ -n "$package" ]; then
        echo "$package" | sed -e "s/$/${END}/" -e "s/^/${START}/" >> ./list.vim
    else
        break
    fi
done
