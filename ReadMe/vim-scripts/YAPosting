Mail formatting plugin for vim
==============================

How to install
--------------

the easiest way, via Vundle:
* add `Bundle 'guyzmo/vim-yaposting'` in your .vimrc
* resource your .vimrc and
* executes `BundleInstall`

otherwise, you already know how to install a vim plugin.

Features
--------

* *TakeOut*: it is used to remove a quoted paragraph. Either you remove the quoted paragraph the cursor is on, or you remove the visual selection.
* *Reformat*: it is used to reformat current paragraph (or selection) to justified text with configurable values of alinea, indent and width
* *CleanReply*: it is used to reformat the whole quoted text (or selection) to be justified and correctly ordered (fixes top replies)
* *Increase Quote level*: increases quote level of current line or selection
* *Decrease Quote level*: decreases quote level of current line or selection
* *Highlight*: hilights all text that is wider than defined settings
* *CutHere*: inserts a quote block with given markers, or put current selection between markers (useful for code citation)

How to configure
----------------

* mappings
    * `let g:yaposting#takeout ` (defaults to `<Leader>mt"`): TakeOut feature
    * `let g:yaposting#reformat` (defaults to `<Leader>mr"`): Reformat feature
    * `let g:yaposting#oequotef` (defaults to `<Leader>mm"`): OE Quotefix feature
    * `let g:yaposting#cleanrep` (defaults to `<Leader>mc"`): CleanReply feature
    * `let g:yaposting#cleanreu` (defaults to `<Leader>m<UP>"`): Increase Quote Level feature
    * `let g:yaposting#cleanred` (defaults to `<Leader>m<DOWN>"`): Decrease Quote Level feature
    * `let g:yaposting#highligh` (defaults to `<Leader>mh"`): Highlight feature
    * `let g:yaposting#cuthere ` (defaults to `<Leader>mn"`): CutHere feature
* mail formatting values
    * `let g:yaposting#marginleft` (defaults to `0`): used as a margin for text reformatting
    * `let g:yaposting#marginright` (defaults to `8`): used as a warn margin for highlights
    * `let g:yaposting#textwidth ` (defaults to `80`): used as a limit for text reformatting
    * `let g:yaposting#alinea    ` (defaults to `4`): used as alinea for text reformatting
* patterns
    * `let g:yaposting#QuoteExpr` (defaults to `>'`): Used to match and insert quotes
    * `let g:yaposting#TakeOutExpr` (defaults to `[…]`): Used to replace a taken out quote paragraph
* cut here markers
    * `let g:yaposting#CutHereBeg` (defaults to `--------8<----------------8<----------------8<---------------8<--------'`)
    * `let g:yaposting#CutHereEnd` = (defaults to `-------->8---------------->8---------------->8--------------->8--------'`)

License
-------

(c)2013, Bernard Guyzmo Pratz, guyzmo at m0g dot net

Even though it is a WTFPL license, if you do improve that code, it's great, but if you
don't tell me about that, you're just a moron. And if you like that code, you have the
right to buy me a beer, thank me, or [flattr](http://flattr.com/profile/guyzmo)/[gittip](http://gittip.com/guyzmo) me.

```
DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
Version 2, December 2004 

Copyright (C) 2004 Sam Hocevar <sam@hocevar.net> 

Everyone is permitted to copy and distribute verbatim or modified 
copies of this license document, and changing it is allowed as long 
as the name is changed. 

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 

0. You just DO WHAT THE FUCK YOU WANT TO.
```


