# mru.vim
keep track of Most Recently Viewed and Most Recently Saved files

## Dependencies
[fzf]

## Little explanation
once installed you'll have the commands Mru and Mrw, the lists will populate as you visit/save files with vim. 
 
 With very little extra trouble you'll have this functionality available from you shell too. this is the code I have in my zshrc

 ```sh
#!/bin/zsh
function mru(){
    mrufile=${1:-.mru}
    if [[ ! -f $HOME/$mrufile ]]; then
        echo $HOME/$mrufile does not exist
        return
    fi
    #print file inverse order(tail) | put line numbers (nl) | fzf with sorting | remove line number from selected file (sed)
    fzfresult=$(tail -r $HOME/$mrufile | nl | fzf --no-sort --exact \
        --preview 'echo {} | sed -E '\''s#^[^/]*##'\'' | xargs $DOTFILES/bin/preview.rb -v' \
        --preview-window 'top:50%' \
        --bind 'ctrl-s:toggle-sort,ctrl-g:toggle-preview' | sed -E 's#[^/]*(/.*$)#''\1''#')
    filename=$(sed -E 's#(^[^:]*).*#\1#' <<< $fzfresult)
    if [[ -f $filename ]]; then
        if [[ $fzfresult =~ ':[[:digit:]]+$' ]]; then
            linenum=$(sed 's#^[^:]*:#+#' <<< $fzfresult)
        fi
        #open selected file in vim AND cd into git's root folder for project of selected file
        vim $linenum $filename -c 'silent :Rooter'
    fi
}
function mrw(){
    mru '.mrw'
}
function mrv(){
    mru '.mru'
}

 ```

License
-------

MIT

[fzf]:   https://github.com/junegunn/fzf.vim

