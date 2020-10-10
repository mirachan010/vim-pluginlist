# vim-smartinput-endwise
`vim-endwise` implementation in `vim-smartinput`

##INTRODUCTION
`vim-smartinput-endwise` is an extension of `vim-smartinput` to provide thefeature of `vim-endwise`.  

You can avoid a confliction between `vim-endwise` and `vim-smartinput`.  

##USAGE
This plugin requires `vim-smartinput`.  
Write bellow in your `vimrc`  


```vim
NeoBundle 'kana/vim-smartinput'
NeoBundle 'cohama/vim-smartinput-endwise'
call smartinput_endwise#define_default_rules()
```


and you can use this plugin at once.  

For example,  


```vim
def foo()|
```

is expanded to  


```vim
def foo()
|
end
```

. | represents the cursor.  

##TODO
Currently, only Ruby, Vim script and sh (zsh) are available and the  
others (Lua, VB (VBA) and Elixir) are not implemented yet.  
