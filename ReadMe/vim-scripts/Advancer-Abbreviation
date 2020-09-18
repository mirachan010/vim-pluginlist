Advancer Abbreviation
=====================
Advancer Abbreviation is a Vim plugin to create code snippet quickly

Features
--------
*   Support any character except space as abbreviation name.
*   Quick jump to next placeholder.
*   Easy to extend.

Installation
------------
    copy plugin/advancer-abbreviation.vim to ~/.vim/plugin

Usage
-----
    Use Shortcut <C-CR> or <S-CR> to expand the abbreviation or jump to next placeholder.

    <S-CR> : Smart Expand or jump to next placeholder.
    <C-CR> : Force Expand or jump to next placeholder.
    <ESC>  : If the line contain placeholder but now it is blank, 
             then delete whole line and leave insert mode.

Options
-------
    g:AbbrShortcutSmartExpand 
        Default: ['<S-CR>']

        A list of expand keys. 
        for std.main will try expand std.main only.
        for std(main will try expand std(main and main.

    g:AbbrShortcutForceExpand
        Default: ['<C-CR>'] 

        A list of force expand keys.
        for std.main will try expand std.main and main.
        for std(main will try expand std(main and main.

    g:AbbrShortcutNoExpand
        Default: []

        Skip expand, jump to next placeholder.

    g:AbbrShortcutEscape
        Default: ['<ESC>']

        A list of Escape keys

    g:AbbrPlaceholders
        Default: ['\/\*TODO\*\/','#TODO#', "'TODO'", '<!--TODO-->']

        The placeholder regex pattern list.

    g:AbbrAutoInit
        Default: 1

        Autocmd for AbbrInitSyntax and AbbrInitMapKeys
        au Syntax,WinEnter * AbbrInitSyntax
        au BufRead,BufNewFile * AbbrInitMapKeys

        AbbrInitMapKeys MUST be invoked, or the no shortcut will work.

    g:AbbrSplitPattern         
        Default: '[()\[\]{}]'

        Use for SmartExpand, bracket is not consider as a word.

Tutorial
--------
###Preparation
    copy ftplugin-examples/* to ~/.vim/ftplugin

    There are 5 examples include c, cpp, javascript, php, ruby
    The abbreviation supported in example are

        c          : for std main #i #ii
        cpp        : for std main
        javascript : for fu
        ruby       : for def
        php        : for

    You could test the script with your favourite language.

###example for edit C file
    <C-CR> = Control+Return
    |      = Cursor postion
    $ gvim foo.c

1

    input: #i<C-CR>foo<C-CR>#ii<C-CR>bar<C-CR>
    output:
    #include <foo>
    #include "bar"
    |

2

    input: std<C-CR>
    output:
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

    |

3

    input: main<C-CR>
    output:
    int main(int argc, char *argv[])
    {
        |
        return 0;
    }

4

    input: for<C-CR>
    output:
    for (|; /*TODO*/; /*TODO*/) {
      /*TODO*/
    }
    /*TODO*/

5

    input: for<C-CR>int i=0<C-CR>
    output:
    for (int i=0; |; /*TODO*/) {
      /*TODO*/
    }
    /*TODO*/
    

Write Your Own Abbreviation
---------------------------
    Use Command Abbr
    Usage: Abbr [name] [code]
    Example:
    Abbr for for (/*TODO*/; /*TODO*/; /*TODO*/) {<CR>/*TODO*/<CR>}<CR>/*TODO*/
    Abbr #ii #include "/*TODO*/"<CR>

    Abbreviate format is same as vim abbr. see help :abbr
    but AdvAbbr has looser limition on name, it support any character as name except space.
    eg: f.f is invalid name in vim abbr but valid in Advancer Abbreviation.
    
    TODO has four different formats
    /*TODO*/, #TODO#, 'TODO', <!--TODO-->
    choose them according to which language is using. 
    for example, /*TODO*/ use for c, cpp, 'TODO' use for ruby

Map the expand and jump key
---------------------------
    If <C-CR> or <S-CR> is used in other way, add
    let g:AbbrPredefinedShortcuts = 0 to .vimrc
    It will disable the ESC mapping too.

    map the expand and jump key to Meta-m(Alt-m)
    inoremap <buffer> <silent> <M-m> <ESC>a<C-R>=AbbrSmartExpand()<CR>
    inoremap <buffer> <silent> <ESC> <C-O>:call AbbrClean()<CR><ESC>


TroubleShooting
---------------
###The plugin cannot work.
    1. Check if the key mapping is correct
    use :imap <S-CR> to check
    The correct output should be
    i   <S-CR>    *@<ESC>a<C-R>=AbbrSmartExpand()<CR>
    if incorrect, invoke command :AbbrInitMapKeys<CR> to remap the keys.

    2. Check if terminal support the key
    Some terminal doesn't support <C-R>, Try remap the key to other.

Others
------
    Use pathogen manage the abbreviation script easily
    see http://www.vim.org/scripts/script.php?script_id=2332
