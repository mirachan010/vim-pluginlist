#!/bin/sh
my-repositories $1 > ./$1.list
while read line
do
    sleep 10
    git clone git://github.com/$1/$line --depth=1
    if [ -d ./$line/autoload -o -d ./$line/plugin ];then
        echo $1/$line >> list
    fi
    rm -rf ./$line
done < $1.list
rm ./$1.list
echo finish
