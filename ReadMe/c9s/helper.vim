
Helper.vim
==========
Help text renderer. provide togglable help text in vim buffer.


Example
=======
Just call Helper register function after creating a new buffer:

    :vnew
    :cal g:Help.reg("Git Menu",join([
        \" <Enter> - execute item",
        \" o       - open node",
        \" O       - open node recursively",
        \],"\n"),1)

You can also add some syntax highlighting:

    " Initialize Help Syntax
    syntax match HelpComment +^#.*+
    syntax match String      +".\{-}"+
    hi HelpComment ctermfg=blue
    hi String      ctermfg=red

