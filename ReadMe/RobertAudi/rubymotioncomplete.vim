rubymotioncomplete.vim
======================

This repository contains a very simple Vim plugin that loads a list of dictionary files to obtain completions.

All the completion files were taken from the [cocoa.vim](https://github.com/msanders/cocoa.vim) plugin, even though I modified some of them.

Installation
------------

I recommend using [Vundle](https://github.com/gmarik/vundle) or [NeoBundle](https://github.com/Shougo/neobundle.vim).

If you are using one of those plugin management solutions, just add the following line to your `.vimrc`:

For Vundle:

```
Bundle "AzizLight/rubymotioncomplete.vim"
```

For NeoBundle

```
NeoBundle "AzizLight/rubymotioncomplete.vim"
```

Usage
-----

The dictionaries are not available automatically, you need to enable them. A command is available for that:

```
:EnableRubyMotionCompletions
```

After that, you can trigger the completions with `<C-X><C-K>`.
