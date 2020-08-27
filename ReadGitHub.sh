#!/bin/sh
my-repositories $1 > ./$1.list
Max=`cat $1.list |wc -l`
COUNT=0
VCOUNT=0
while read line
do
    git clone git://github.com/$1/$line --depth=1
    if [ -d ./$line/autoload -o -d ./$line/plugin ];then
        echo $1/$line >> list
        VCOUNT=$(( VCOUNT + 1 ))
    fi
    COUNT=$(( COUNT + 1 ))
    echo $COUNT/$Max -- $VCOUNT
    rm -rf ./$line &
    sleep 10 &
    wait
done < $1.list
rm ./$1.list
echo finish
