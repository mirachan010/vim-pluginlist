bestfriend.vim
==========

Who is the your best friend?
If you want to know, this is an answer.

This plugin is not so practical, but might provide a bit interest:)

How to install
----------
If you use [Vundle](https://github.com/gmarik/vundle.git) it's very easy, you just run command `:BundleInstall tacahiroy/vim-bestfriend`
inside vim.  
And also put `Bundle 'tacahiroy/vim-bestfriend'` into `.vimrc`.

If you use [pathogen.vim](https://github.com/tpope/vim-pathogen), you just execute following:

    cd ~/.vim/bundle
    git clone git://github.com/tacahiroy/vim-bestfriend.git

If you use neither Vundle nor pathogen, copy autoload and plugin directory  
into your `$HOME/.vim` directory.
\* on Windows, you probably copy those files into `_vim` directory.

Usage
----------
bestfriend.vim provide 2 commands to show your best friend.

* `:BestFriend` shows edit time of the current file.
```
    1: ~/.vimrc                                               00:56 (01:04)
```

* `:BestFriends` shows ranking of edit time.
```
     1: ~/.vimrc                                               00:56 (01:04)
     2: ~/foo/bar/baz.pl                                       00:33 (00:33)
     3: ~/hoge/hige/huga.rb                                    00:01 (00:01)
     4: ~/.zshrc                                               00:00 (00:00)
     6: ~/Projects/vim/vim-bestfriend/autoload/bestfriend.vim  00:00 (00:03)
     7: ~/Projects/vim/vim-bestfriend/plugin/bestfriend.vim    00:00 (00:01)
     8: ~/Projects/vim/vim-bestfriend/README.md                00:00 (00:13)
     9: ~/.zshenv                                              00:00 (00:00)
    10: ~/.tmux.conf                                           00:00 (00:00)
```

Actually bestfriend.vim provides several options.

Related links
----------

[GitHub](https://github.com/tacahiroy/vim-bestfriend)

License
----------

Copyright (c) 2012 tacahiroy. Distributed under the MIT License.

