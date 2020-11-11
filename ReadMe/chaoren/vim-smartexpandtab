Smarter tab expansion for Vim
=============================

[![Build Status](https://travis-ci.org/chaoren/vim-smartexpandtab.svg?branch=master)](https://travis-ci.org/chaoren/vim-smartexpandtab)

With this plugin, hitting `<Tab>` in insert mode will insert a smart expanding
tab:

1. If the character before the cursor is a space, then spaces will be inserted
   up to the next `'tabstop'`.
2. If the character before the cursor is a tab, then a literal `<Tab>` will be
   inserted.
3. If neither of these cases apply, then this behaves like a regular `i_<Tab>`.

Let `_` be a space and `--->` be a tab.

Suppose you hit `<Tab>` here:

```
--->
    ^<Tab>
```

It doesn't make sense to insert spaces here, but if `'expandtab'` is on, then
spaces would get inserted anyway.

Suppose you hit `<Tab>` here:

```
____
    ^<Tab>
```

It doesn't make sense to insert a tab here, but if `'expandtab'` is off, then
a tab would get inserted anyway.

Using `'smarttab'` or `'softtabstop'` forces your `'expandtab'` behavior onto
the file, while using this plugin will respect whatever choice of indentation or
alignment that was already there.

Customization
=============

Use `g:smartexpandtab_no_map` to disable the default `<Tab>` mapping.  
E.g.,
```
	let g:smartexpandtab_no_map = 1
```

Use `<Plug>SmartExpandTab` to define your own mapping.  
E.g.,
```
	imap <Leader><Tab> <Plug>SmartExpandTab
```

Caveats
=======

Vim does its own thing with tabs and spaces in these cases when
`'expandtab'` is off:

1. at the start of a line, `'smarttab'` is on, and `'shiftwidth'` is not
   a multiple of `'tabstop'`.
2. `'softtabstop'` is negative, and `'shiftwidth'` is not a multiple of
   `'tabstop'`.
3. `'softtabstop'` is set, and not a multiple of `'tabstop'`.

It doesn't make sense for the plugin to function in these cases, so it will
just do nothing.
