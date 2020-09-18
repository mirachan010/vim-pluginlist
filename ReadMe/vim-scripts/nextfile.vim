nextfile.vim
=============

Vim script to open related files by command, or by keymap(i.e. \n or any)

![Screen Shot](http://i.imgur.com/tQMYsBA.png)

How it works
------------

* When initialized, set related files
* In vim window, when NextFile() is called, by key mapping, <leader>n, is pressed

  * Get the current file name
  * Get the related files
  * Browse the related files and open in current, splitted, or vertically splitted window

Usage
-------
  * \r to open related files
  * &lt;Enter> to open a file
  * `o` to open in a split window
  * `v` to open in a vertically split window
  * NEW!! &lt;Enter> on directory will list files in the directory

Installation
------------

* Download the following files into ~/.vim/plugin directory 
  * nextfiles.vim
  * singular_expressions.txt
  * plural_expressions.txt

* To your ~/.vimrc, add a keyboard map to call NextFiles() function
  * The following is my preference. \r to see related files
<pre>
    nmap &lt;Leader>r &lt;ESC>:call NextFile()&l6;CR>
</pre>
  Or, you may assign \n to see next file on the cursor
<pre>
    nmap &lt;Leader>n &lt;ESC>:call NextFile()&l6;CR>
</pre>

* For Rails developers, there is pre-defined mapping like the following. You may want to change this. If so, you can re-define this in your .vimrc

<pre>
    let g:nextFilesMap["Ruby On Rails"] = {
      \ "Ruby On Rails" : {
        \ "Controller" : { "expression" : "app/controllers/(.*)_controller.rb$", "transform" : "pluralize" },
        \ "Funtional Test" : { "expression" : "test/functional/(.*)_controller_test.rb$", "transform" : "pluralize" },
        \ "View" : { "expression" : "app/view/(.*)/", "transform" : "pluralize" },
        \ "Model" : { "expression" : "app/models/(.*).rb$", "transform" : "singularize" },
        \ "Unit Test" : { "expression" : "test/unit/(.*)_test.rb$", "transform" : "singularize" }
      \ }
    \ }
</pre>
