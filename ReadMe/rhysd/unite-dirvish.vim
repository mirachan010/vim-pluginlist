Source plugin for [unite.vim](https://github.com/Shougo/unite.vim) and [vim-dirvish](https://github.com/justinmk/vim-dirvish).
It provides an incremental search in vim-dirvish buffer.

Usage:
```
:Unite dirvish
```

This plugin overwrites original `/` mapping on `dirvish` filetype. You can use unite.vim for
searching paths in a Dirvish buffer instead of original `/`.

When you want to search only directories, you can pass `onlydir` option as follows:

```
:Unite dirvish:onlydir
```

This is also mapped to `d/` by default on `dirvish` filetype.

Distributed under [MIT License](https://opensource.org/licenses/MIT).

```
Copyright (c) 2017 rhysd
```

