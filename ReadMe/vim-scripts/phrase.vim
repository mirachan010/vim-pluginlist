What is this?
==================================
phrase.vim support.

  * gather userful phrase to consolidated file
  * easily open that phrase file
  * view someone's phrase easily
  * search phrases with [unite.vim](https://github.com/Shougo/unite.vim) interface.

I mainly use this plugin for gather useful phrase while *reading* source codes.
Then recall that phrase when *writing*.

And intending to share several programming idiom socially.

Try
================================

Create phrase directory.
Copy phrase example file to that directory.

      $ mkdir $HOME/.vim/phrase/$USER
      $ cp example/* $HOME/.vim/phrase/$USER/

Show phrase then enter to jump to that title

      :PhraseEdit pl

Visually select text in buffer then create phrase from that text.

      :'<,'>PhraseCreate<CR>

If you have unite.vim
      :Unite phrase<CR>

Usage
==============================
See [help](https://github.com/t9md/vim-phrase/blob/master/doc/phrase.txt)

Sample phrases
==============================
Unite phrase search all phrase under directory in &rtp, means you can manage  
phrase from others with [vundle](https://github.com/gmarik/vundle)   
or [vim-pathogen](https://github.com/tpope/vim-pathogen).

* [t9md/phrase-t9md](https://github.com/t9md/phrase-t9md)
