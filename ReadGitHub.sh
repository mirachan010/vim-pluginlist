#!/bin/bash
for OPT in "$@"
do
    case $OPT in
        -u)
            USER=1
            ORG=0
            NAME=$2
            ;;
        -o)
            USER=0
            ORG=1
            NAME=$2
            ;;
    esac
    shift
done
touch ./${NAME}.list
if [ $USER -eq 1 ];then
    echo download repositories list
    my-repositories ${NAME} > ./${NAME}.list
    echo downloaded repositories list
fi
if [ $ORG -eq 1 ];then
    echo What your GitHubID?
    read USER
    echo download repositories list
    curl -u ${USER} "https://api.github.com/orgs/${NAME}/repos?per_page=100&page=1">>${NAME}_1
    echo downloaded repositories list
    cat ${NAME}_1|jq -r .[].name >> ./${NAME}.list
    rm ${NAME}_1
fi
touch ./CheckedFiles/${NAME}.list
comm <(sort ./${NAME}.list) <(sort ./CheckedFiles/${NAME}.list) -23 > ./check.list
rm ./${NAME}.list
Max=`cat ./check.list |wc -l`
COUNT=0
VCOUNT=0
COLOR=0
if [ ! -d ./ReadMe/${NAME} ]; then
    mkdir ./ReadMe/${NAME}
fi
while read line
do
    git clone git://github.com/${NAME}/$line --depth=1 > /dev/null 2>&1
    if ls ./$line/colors/*.vim >/dev/null 2>&1;then
        COLOR=1
    else
        COLOR=0
    fi
    if [ -d ./$line/autoload -o -d ./$line/plugin -o $COLOR -eq 1 ];then
        echo ${NAME}/$line >> list_new
        VCOUNT=$(( VCOUNT + 1 ))
        COLOR=0
        if [ -e ./$line/README.md ];then
            cp ./$line/README.md ./ReadMe/${NAME}/$line
        elif [ -e ./$line/README.mkd ]; then
            cp ./$line/README.mkd ./ReadMe/${NAME}/$line
        fi
        touch ./ReadMe/${NAME}/$line
    fi
    echo $line >> ./CheckedFiles/${NAME}.list
    COUNT=$(( COUNT + 1 ))
    echo $COUNT/$Max -- $VCOUNT
    rm -rf ./$line &
    sleep 10 &
    wait
done < ./check.list
rm ./check.list
echo checking
if [ -f ./list_new ];then
    comm <(sort ./list_new) <(sort ./list) -23 >> list
    rm ./list_new
    sort -u list -o list
    sort -u ./CheckedFiles/${NAME}.list -o ./CheckedFiles/${NAME}.list
    git add ./list
    git commit -m "add ${NAME}"
    git add ./CheckedFiles/${NAME}.list
    git commit -m "new repos ${NAME}"
    git add ./ReadMe/${NAME}/.
    git commit -m "new readme ${NAME}"
fi
echo finish
