vim-javacomplete\_ex
====================

improved vim-javacomplete, with the following features:

       1. complete a class name.
       2. add 'import' statement for a given class.

Install
=======

you should first have [vim-javacomplete](http://www.vim.org/scripts/script.php?script_id=1785) installed, which this plugin is depending on.

simply merge vim-javacomplete\_ex/plugin into your .vim/plugin directory.

putting the whole vim-javacomplete\_ex directory into .vim/bundle is also OK, if you have vim-pathogen installed.

Usage
=====

*better java completion:*

besides vim-javacomplete's completion, vim-javacomplete\_ex supports completing classnames:

example: ClassNa| => shows all class names under $CLASSPATH prefixed with "ClassNa".

![snapshot](https://raw.github.com/richox/vim-javacompleteex/master/README.snapshot.png "Completing a classname")

*add import statement:*

1. move cursor on your classname.
2. execute `:JavaCompleteExAddImport` command under normal mode, you can map `:JavaCompleteExAddImport<CR>` to any key you want:).

Configuration
=============

`set omnifunc=javacomplete_ex#Complete` and use `<C-x><C-o>` for completion.

vim-javacomplete\_ex has currently the following configurations:

    let g:JavaCompleteEx_JavaHome   # $JAVA_HOME
    let g:JavaCompleteEx_ClassPath  # $CLASSPATH

normally you don't have to modify them, but you can also edit them by hand, for example you can change a different classpath when editing java code.

update log
==========

    20131218 -- rename reposity to vim-javacompleteex.
    20131212 -- initial update.
