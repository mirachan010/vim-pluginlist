#!/bin/bash
while :
do
    package=$(cat list | fzf | awk '{print $1}' )
    if [ -n "$package" ]; then
        echo "$package" | sed -e "s/$/\'/" -e "s/^/[[plugins]]\nrepo='/" >> list.toml
    else
        break
    fi
done
