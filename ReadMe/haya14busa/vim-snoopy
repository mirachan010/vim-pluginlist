vim-snoopy :dog: :mag_right:
============================

[![](https://img.shields.io/github/release/haya14busa/vim-snoopy.svg?style=flat-square)](https://github.com/haya14busa/vim-snoopy/releases)
[![](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![](https://img.shields.io/badge/doc-%3Ah%20snoopy.txt-red.svg?style=flat-square)](doc/snoopy.txt)

:notes: Introduction
--------------------

*vim-snoopy* ( *snoopy.vim* ) provides a way to snoop script-local things.
You can get `<SID>`, access script-local functions, and even script-variable
from {path}.

It also provides a command to open the `<SID>` file (:SnoopyOpen),
`:scriptnames` like functions and [unite.vim] interface for :scriptnames.

This plugin is just a wrapper of [Vital.Vim.ScriptLocal] and little
additional functionality. Please install [vital.vim] to read this snoopy
documentation and if you are a vim plugin developer and want to use
vim-snoopy, please use vital's [Vital.Vim.ScriptLocal] API.

**Let's snoop around the script-local things and debug, test them!**

### :tada: Access script local functions

```vim
:let s:sfuncs = Sfuncs('plugin/snoopy.vim')
:echo s:sfuncs
" =>
" {
"   'capitalize': function('<SNR>54_capitalize'),
"   'default_names': function('<SNR>54_default_names'),
"   'define_funcs': function('<SNR>54_define_funcs')
" }

:echo s:f.capitalize('hi there!')
" => Hi there!
```

### :ghost: Access script local variables
Warning: this is unsafe function. Please use it carefully

```vim
:let s:svars = Svars('autoload/unite/sources/snoopy.vim')
:echo s:svars.source
" =>
" {
"   'action_table': {},
"   'alias_table': {},
"   ...
"   'white_globs': []
" }
```

:electric_plug: Functions
-------------------------

| name                | alias for                           |
| ------------------- | ----------------------------------- |
| `Scriptnames()`     | Vital.Vim.ScriptLocal.scriptnames() |
| `Sfuncs({path})`    | Vital.Vim.ScriptLocal.sfuncs()      |
| `Sid({path})`       | Vital.Vim.ScriptLocal.sid()         |
| `Sid2path(<SID>)`   | Vital.Vim.ScriptLocal.sid2path()    |
| `Sid2sfuncs(<SID>)` | Vital.Vim.ScriptLocal.sid2sfuncs()  |
| `Sid2svars(<SID>)`  | Vital.Vim.ScriptLocal.sid2svars()   |
| `Svars({path})`     | Vital.Vim.ScriptLocal.svars()       |

See :h [Vital.Vim.ScriptLocal] for detail

:mag: Commands
--------------

### `:SnoopyOpen <SID>`

Open the file whose `<SID>` is matched with given one.

example:

```vim
:SnoopyOpen 14
```

:dragon: Unite
--------------

### unite-scriptnames
vim-snoopy includes [unite.vim] sources for :scriptnames.
You can see scriptnames in unite interface and open the target file quickly.

```vim
:Unite scriptnames
```

:bird: Author
-------------
haya14busa (https://github.com/haya14busa)

:memo: Document
---------------
[:h snoopy.txt](doc/snoopy.txt)

[vital.vim]: https://github.com/vim-jp/vital.vim
[Vital.Vim.ScriptLocal]: https://github.com/vim-jp/vital.vim/blob/master/doc/vital-vim-script_local.txt
[unite.vim]: https://github.com/Shougo/unite.vim
