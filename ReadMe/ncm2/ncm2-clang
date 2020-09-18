This is a temporary repo ported from
[ncm-clang](https://github.com/roxma/ncm-clang).

I'm going to write a new c/c++ completion plugin based on libclang instead of
the clang executable. But before that happen, I still need a decent C/C++
completion plugin.

## Install

```vim
Plug 'ncm2/ncm2-clang'
```

## Settings

If you're using cmake, add `set(CMAKE_EXPORT_COMPILE_COMMANDS, 1)` into
`CMakeLists.txt` so that `compile_commands.json` will be generated.

### `g:ncm2_clang#database_path`

A list of paths for locating `compile_commands.json`. Default is
`['compile_commands.json', 'build/compile_commands.json']`

### `g:ncm2_clang#clang_command`

The command to invode `clang` executable. Defaults to `['clang']`.

## Utilities

### `ncm2_clang#compilation_info()`

Get compilation flags and directory for current file.

The following vimrc shows how to use
[Rip-Rip/clang_complete](https://github.com/Rip-Rip/clang_complete)'s goto
declaration feature.

