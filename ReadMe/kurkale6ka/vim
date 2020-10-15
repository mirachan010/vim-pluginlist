Vim tips
========

***Notes:***
* `[]` will be used to represent the position of the cursor
* `^a` means `Ctrl+a`
* `:h topic` can be used to access Vim's help section on `topic`
* `:h` on its own - help main page
* `^<LeftMouse>` - jump to tag (link) under cursor, `^<RightMouse>` - jump back
* It is **IMPORTANT** to run Vim in nocompatible mode (`:h'cp`)
* `:ve` will list all enabled (+) features
* **vimtutor** on the command line will teach you some basics

```
 I - insert at the beginning of line (:h I)
 A - append at the end of line
 D - delete to the end of line
2D - delete to the end of line + next line
 C - change to the end of line
```
***Note:*** compare with their lowercase counterparts (eg: `:h i`)

```
o - open line below (:h o)
O - open line above
```

```
Modify 2 lines: d<up>   (delete)
                y<Down> (copy)
```

```
          xs - change 2 characters (:h s)
          4s - change 4 characters (mnemo: substitute)
          cc - change current line
          de - delete to the end of word
         2cE - change to the end of second WORD for current position (:h WORD)
      d/word - delete to next occurence of word
d<LeftMouse> - delete to where you click with your mouse
   :g/word/d - delete all lines containing word (:g/word shows them, :h:g)
           R - enter replace mode (:h R)
```

```
 vB - select back to the beginning of WORD (:h v)
5yy - copy (yank) 5 lines
  P - paste above current line (:h P, :h]p, :h[p)
```

```
 u - undo
^r - redo
 U - undo all changes in current line
```

```
* - search for word under cursor (mnemo: * often stands for all, :h*)
. - repeat previous action (:h.)
```

`:e ^d` - select a file to edit (mnemo: <strong>d</strong>isplay)

Window Splitting
----------------
1. `:h^ws` - <strong>w</strong>indow <strong>s</strong>plit
2. `:h^wv` - <strong>w</strong>indow <strong>v</strong>ertical
3. `:h^wc` - <strong>w</strong>indow <strong>c</strong>lose

Jump to previous position
-------------------------
```
example: while on line 23, use gg to go to the start of the file,
         `` will then bring you back, (:h``, :h jump-motions)
```

Complete word in insert mode
----------------------------
```
original: Lorem ipsum dolor sit amet, consectetur l^p
modified: Lorem ipsum dolor sit amet, consectetur lorem
          (:h i^p, :h i^n (i is for insert, compare with :h^p), :h'spell)
```

Copy from above in insert mode (`:h i^y`, `:h i^e`)
---------------------------------------------------
```
example: Lorem ipsum dolor sit amet, consectetur
         [] (cursor on next line, under L)
 action: ^y^y^y^y^y^y^y
 result: Lorem i
```

Join lines
----------
```
original: Lorem ipsum dolor sit amet, c[o]nsectetur adipisicing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua.
  action: J
modified: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
```

Macros
------
1. `qa` - start recording in register `a` (`qq` would record in register `q`, `:h q`)
2. `q`  - stop recording
3. `@a` - execute actions recorded in register `a`

***Example:***
```
     original: [L]orem ipsum dolor sit amet, consectetur
        macro: qqe2hveUWq (q(record)q...q(stop))
  explanation: e2hveUW means: go to the end of word
                              return 2 characters back
                              select visually to the end of word
                              make uppercase
                              go to next WORD (:h WORD)
execute macro: 5@q (repeat 5 times)
     modified: LoREM ipSUM doLOR SIT aMET, consecteTUR
```

Text objects (`:h text-objects`, needs the `+textobjects` feature)
------------------------------------------------------------------
```
original: [L]orem ipsum 'dolor sit amet', consectetur
  action: ci' (change inside quotes)
modified: [L]orem ipsum '', consectetur
```

```
original: Lore[m] ipsum dolor sit amet, consectetur
  action: daw (delete a word)
modified: ipsum dolor sit amet, consectetur
```

```
original: Lorem ipsum dolor sit a[m]et, consectetur
  action: daW (delete a WORD)
modified: Lorem ipsum dolor sit consectetur
```

To specified character (`:h t`, `:h f`)
---------------------------------------
```
original: Lorem [i]psum dolor sit amet, consectetur
  action: tl ((go) to l)
  result: Lorem ipsum d[o]lor sit amet, consectetur
```

```
original: Lorem [i]psum dolor sit amet, consectetur
  action: cto (change to o)
  result: Lorem olor sit amet, consectetur
```

```
original: Lorem [i]psum dolor sit amet, consectetur
  action: dfc (delete to (forward) c (included))
  result: Lorem onsectetur
```

Visual block insert (`:h v_b_I`)
--------------------------------
```
original: [L]orem ipsum dolor sit amet, consectetur
          incididunt ut labore et dolore magna
 actions: ^v<Down>I--<esc>
modified: --Lorem ipsum dolor sit amet, consectetur
          --incididunt ut labore et dolore magna
```

Visual block delete (`:h v_b_D`)
--------------------------------
```
original: Lorem ipsum dolor sit ame[t], consectetur
          incididunt ut labore et dolore magna
 actions: ^v<Down>D
modified: Lorem ipsum dolor sit ame
          incididunt ut labore et d
```

Visual paste (`:h v_p`)
-----------------------
```
original: Lorem ipsum [d]olor sit amet, consectetur
  action: yt,3Wviwp (copy to , then go 3 WORDs forward, select and paste)
modified: Lorem ipsum dolor sit amet, dolor sit amet
```

`gv` - reselect previously selected visual area (mnemo: <strong>g</strong>o <strong>v</strong>isual, `:h gv`, `:h v_o`)

Search and replace
------------------
```
original: Lorem,ipsum,[d]olor,sit,amet,consectetur
  action: :s/,\zs/\r/g (:h:s, :h/\zs (z start), :h/\r (<cr>))
modified: Lorem,
          ipsum,
          dolor,
          sit,
          amet,
          consectetur
```
***Note:*** `%s/old/new/gc` will replace all occurrences of old in the file and ask
                    you to confirm (`:h:%`, `:h:s_flags`)

Open a file from within an edited file (`:h gf`)
------------------------------------------------
```
example: Lorem ipsum /et[c]/fstab, consectetur
 action: gf (goto file)
 result: you are now editing /etc/fstab
         (your other file is still opened in another buffer, go back with :e# or
         :bp (buffer previous) or ^6 or ^^, :h e#, :h:bp, :h^^)
```

Change to upper case (`:h v_U`, `:h v_u`, `:h~`)
------------------------------------------------
```
original: L[o]rem ipsum dolor sit amet, consectetur
  action: viwU
modified: LOREM ipsum dolor sit amet, consectetur
```

Add, substract (`:h^a`, `:h^x`)
-------------------------------
```
original: L[o]rem ipsum dolor sit amet, 9
  action: 2^a
modified: Lorem ipsum dolor sit amet, 11
```

Useful help links:
------------------
* `:h tips`
* `:h usr_28` (folding)
* `:h usr_40` (mappings)
* `:h index`
* `:h'tags`
* `:h:fin`
* `:h'pa`
* `:h:helpg`

Plugins:
--------
* https://github.com/junegunn/vim-plug (used for easier install of other plugins)
* https://github.com/godlygeek/csapprox (gvim colorschemes for terminal)
* https://github.com/junegunn/vim-easy-align (align stuff vertically)
* https://github.com/tpope/vim-surround (easier surrounding of text)
* https://github.com/tpope/vim-commentary (easier commenting of code)
* https://github.com/SirVer/ultisnips (predefined snippets (skeletons) of text)
* https://github.com/neomake/neomake (linting)

Links:
------
* http://www.vim.org/
* http://en.wikipedia.org/wiki/Vim_%28text_editor%29
* http://en.wikipedia.org/wiki/Vi
* https://github.com/godlygeek/vim-files/blob/master/.vimrc
* http://vim.wikia.com/wiki/Vim_on_Freenode

Quit and save: `ZZ`  
Quit without saving: `ZQ`

My Vim tips on wikia:
---------------------

* [A better gm command](http://vim.wikia.com/wiki/A_better_gm_command)
* [Execute an ex command in a Scratch buffer](http://vim.wikia.com/wiki/List_loaded_scripts)
* [Easy underlining of lines](http://vim.wikia.com/wiki/Underline_text)
* [Enhanced Ctrl+A, Ctrl+X](http://vim.wikia.com/wiki/Enhanced_Ctrl-A)

Author:
-------

Dimitar Dimitrov: kurkale6ka

mitkofr@yahoo.fr
