#!/bin/bash
check_mrepo(){
    cat ${NAME}.list
    read -p "ok?(y/n)>>" yn
    case "$yn" in
        [yY]*)
            ;;
        *) echo "change to orgs repositories."
            rm ${NAME}.list
            ORG=1
            ;;
    esac
}

dl_orepo(){
    read -p  "What your GitHubID?>>" USERNAME
    echo download repositories list
    curl -u ${USERNAME} "https://api.github.com/orgs/${NAME}/repos?per_page=100&page=1">${NAME}_1
    echo downloaded repositories list
    cat ${NAME}_1|jq -r .[].name > ./${NAME}.list
    rm ${NAME}_1
}

check(){
    echo checking
    comm <(sort ./list_new) <(sort ./list) -23 >> list
    rm ./list_new
    sort -u list -o list
    sort -u ./CheckedFiles/${NAME}.list -o ./CheckedFiles/${NAME}.list
    git add ./list
    git commit -m "add ${NAME}"
    git add ./CheckedFiles/.
    git commit -m "new repos ${NAME}"
    git add ./ReadMe/${NAME}/.
    git commit -m "new readme ${NAME}"
    bash ./rank.sh>rank
    git add ./rank
    git commit -m "update rank files"
}

makelist(){
    touch ./CheckedFiles/${NAME}.list
    comm <(sort ./${NAME}.list) <(sort ./CheckedFiles/${NAME}.list) -23 > ./check.list
    rm ./${NAME}.list
    Max=`cat ./check.list |wc -l`
    if [ $Max -eq 0 ]; then echo finish; rm ./check.list; exit; fi
}

loops(){
    touch ./list_new
    if [ ! -d ./ReadMe/${NAME} ]; then mkdir ./ReadMe/${NAME}; fi
    while read line; do
        git clone git://github.com/${NAME}/$line tmp --depth=1 > /dev/null 2>&1
        if ls ./tmp/colors/*.vim >/dev/null 2>&1; then COLOR=1; else COLOR=0; fi
        if [ -d ./tmp/autoload -o -d ./tmp/plugin -o $COLOR -eq 1 -o -d ./tmp/rplugin/ -o -d ./tmp/lua ];then
            echo ${NAME}/$line >> list_new
            VCOUNT=$(( VCOUNT + 1 ))
            COLOR=0
            if [ -e ./tmp/README.md ];then
                cp ./tmp/README.md ./ReadMe/${NAME}/$line
            elif [ -e ./tmp/README.mkd ]; then
                cp ./tmp/README.mkd ./ReadMe/${NAME}/$line
            fi
            touch ./ReadMe/${NAME}/$line
        fi
        echo $line >> ./CheckedFiles/${NAME}.list
        COUNT=$(( COUNT + 1 ))
        echo $COUNT/$Max -- $VCOUNT
        rm -rf ./tmp &
        sleep 10 &
        wait
    done < ./check.list
    rm ./check.list
}

read -p "username?>>" NAME
my-repositories ${NAME} > ./${NAME}.list
TEST=`cat ${NAME}.list|wc -l`
ORG=0; COUNT=0; VCOUNT=0; COLOR=0

if [ $TEST -eq 1 ]; then check_mrepo; fi
if [ $ORG -eq 1 ]; then dl_orepo; fi

makelist

if [ -f ./check.list ];then
    loops
else
    echo No new list in ${NAME} repositories
    echo finish
    exit
fi
if [ -f ./list_new ];then check; fi

echo finish
