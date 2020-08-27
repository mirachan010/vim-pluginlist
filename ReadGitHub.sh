#!/bin/bash
for OPT in "$@"
do
    case $OPT in
        -u)
            USER=1
            NAME=$2
            ;;
        -o)
            ORG=1
            NAME=$2
            shift
            ;;
    esac
    shift
done
if [ $USER ];then
    echo aa
    my-repositories $NAME >> ./$NAME.list
elif [ $ORG ];then
    curl -u mirachan010 "https://api.github.com/orgs/$NAME/repos?per_page=100&page=1">$NAME_1
    cat $NAME_1|jq -r .[].name > $NAME.list
    echo `cat $NAME.list|wc -l`
fi
Max=`cat $NAME.list |wc -l`
COUNT=0
VCOUNT=0
while read line
do
    git clone git://github.com/$NAME/$line --depth=1
    if [ -d ./$line/autoload -o -d ./$line/plugin ];then
        echo $NAME/$line >> list_new
        VCOUNT=$(( VCOUNT + 1 ))
    fi
    COUNT=$(( COUNT + 1 ))
    echo $COUNT/$Max -- $VCOUNT
    rm -rf ./$line &
    sleep 10 &
    wait
done < $NAME.list
echo checking
if [ -f ./list_new ];then
    comm <(sort ./list_new) <(sort ./list) -23 >> list
    rm ./list_new
fi
rm ./$NAME.list
sort -u list -o list
echo finish
