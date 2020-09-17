#!/bin/bash
while :
do
    cd ./ReadMe
    package=$( fzf --preview "head -100 {}" | awk '{print $1}' )
    cd ../
    if [ -n "$package" ]; then
        echo "$package" | sed -e "s/$/\'/" -e "s/^/[[plugins]]\nrepo='/" >> ./list.toml
    else
        break
    fi
done
