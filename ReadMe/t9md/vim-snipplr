snipplr.vim 
============
Snipplr.vim is frontend for http://www.snipplr.com/
You can open your favoritted snippet or get snippet you specified by ID or URL.

INSTALL
---------------

    cp plugin/snipplr.vim $HOME/.vim/plugin/
    cp syntax/snipplrlist.vim $HOME/.vim/syntax/
    copy bin/snipplr.rb to one of the directory in $PATH

SETUP
---------------

Create account on http://www.snipplr.com/
You can find API KEY at buttom of "Setting" page.

then save API KEY as `~/.snipplr/api_key`

GLOVAL VARIABLE
---------------
You can exclusively set path for snipplr.rb in `.vimrc`

    let g:snipplr_rb = '$HOME/.vim/bundle/snipplr/bin/snipplr.rb'

Command
----------

snipplr.rb save snippets once get as `~/.snipplr/db.yml.`
You can avoid cache with exlamation(!) version command.

### SnipplrGet
In opend snippet buffer you can use 'i' to view informatin about that snippet.

    :SnipplrGet 1234
    :SnipplrGet http://snipplr.com/view/1234/sample

### SnipplrList

    :SnipplrList
    :SnipplrList!

### SnipplrFind
To this comman work, you have to install [ fuzzyfinder ]( http://www.vim.org/scripts/script.php?script_id=1984 )

    :SnipplrFind
    :SnipplrFind!

KeyMapping Example
------------------

    nnoremap <silent> <Space>sl :<C-u>SnipplrFind<CR>
    nnoremap <silent> <Space>sr :<C-u>SnipplrFind!<CR>

TODO
------------------
parametarize cache dir and api_key location etc..  
query with metadata(tag, user.. etc)  
post snippet from vim buffer  
more informative syntax highlight with predefined keyword for lang name  
dynamically change window height for snipplr list  
merge more than one cache data to one cache(which is comvenient for  
   collabolate with coworker  
