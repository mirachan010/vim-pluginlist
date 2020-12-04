# SnipHelpers

An assortment of helper functions for use in Vim snippets and other VimScripts

## Included Helpers

`CurrentBufferPath()` - file path for the current buffer

`CurrentBufferFileName()` - file name for the current buffer (-path)

`CurrentBufferFileNameNoExt()` - file name (-ext, -path) for the current buffer

`CurrentBufferFileNameExt()` - file extension (-name, -path) for the current buffer

`CurrentBufferFileNameToBumpyCase()` - `hello_word.ex` -> `HelloWorld` (only for snake case for now)

# Installation

Using Vim Plug:

```
Plug `dkarter/sniphelpers.vim`
```

Save, Source and Run `:PlugInstall`

# License

MIT

