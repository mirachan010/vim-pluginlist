vim-cpp-include
===============

This is a plugin for the [vim](http://www.vim.org/) editor for extending the include
list of a C/C++ source file with the aid of a [tags](https://en.wikipedia.org/wiki/Ctags) file.
For a given name (e.g. `:CppInclude vector`) it will search for a matching tag and create an
include for the referenced file of the tag.

The plugin doesn't create tags, but only provides tags for the C++ standard library.
The tags for the sources have to be created with a tool like [universal ctags](https://github.com/universal-ctags/ctags).
Take a look at `:help tags-and-searches` how tags are used and configured in vim.

Installation
============

The recommended way is to use any plugin manager, like [pathogen.vim](<https://github.com/tpope/vim-pathogen/>):

    $> cd ~/.vim/bundle
    $> git clone https://github.com/dan-t/vim-fn
    $> git clone https://github.com/dan-t/vim-cpp-include

Quick Start
===========

The main information for the plugin are the locations of the C/C++ header files
which are defined by `g:cpp_include_origins` in the `~/.vimrc` file:

    let g:cpp_include_origins = [
       \ ['std', { 'version': 'c++11', 'surround': '<', 'sort_order': 0 }],
       \ ['my_app', { 'directory': '/path_to_headers_of_my_app/', 'surround': '"', 'sort_order': 1 }],
       \ ['some_lib', { 'directory': '/path_to_headers_of_some_lib/', 'surround': '"', 'sort_order': 2 }]]
 
This defines three origins: `std`, `my_app` and `some_lib`. The `directory` defines the root directory of
the headers. The `surround` defines how the includes are formated. So the `<` for `std` yields an include
like: `#include <vector>`. The `sort_order` defines how the includes are sorted. The currently supported
values of `version` for `std` are: `c++11`, `c++14` and `c++17`.

Now calling `:CppInclude vector` should add the include `#include <vector>`. If there were no includes present
before, then you have to choose an include position. For the automatic choosing of the position of the first include
take a look at `g:cpp_include_position_fallback`.

Calling `:CppInclude` without any argument will take the name under the cursor, so you can use it to define a mapping.

The present includes can be sorted by calling `:CppIncludeSort`, which uses `sort_order` for the sorting.
The includes inside of one `sort_order` are sorted alphabetically.

Configuration
=============

These variables are available to be set inside of the `~/.vimrc` file, e.g.: 

    let g:cpp_include_header_extensions=["h"]

g:cpp_include_header_extensions
-------------------------------
(default=["h", "", "hh", "hpp", "hxx"])

Only tags from header files are considered. The lowercase extension of the tag filename is
compared with `g:cpp_include_header_extensions`.

g:cpp_include_kinds_order
-------------------------
(default=[["c", "s", "g", "u", "t", "d"], ["p", "f", "x"], ["n"]])

Only tags of certain kinds are considered. For the meaning of the kinds take a look at
the output of `ctags --list-kinds=C++`. Each list or string inside of `g:cpp_include_kinds_order`
is considered as one group. The groups act as a filter on the tags. E.g. if for the name
`vector` there is a class definition (kind="c") and a function definition (kind="f"), then
the class definition is prefered, because "c" is in front of "f". If there would be a
class definition and a struct definition (kind="s") for `vector`, then the user had to
choose which one to use, because "c" and "s" are in the same group.

g:cpp_include_forced_headers
----------------------------
(default={})

If the same name has multiple tags, which means you've to choose which tag should be used, but
for this name you always want to use the same tag and therefore header, then you can force
the used header by:

    let g:cpp_include_forced_headers = { 
       \ 'some_name': { 'origin': 'my_app', 'path': 'SomeHeader.h' } }

g:cpp_include_default_surround
------------------------------
(default='"')

If there's no `surround` entry for the origin then `g:cpp_include_default_surround` is used.

g:cpp_include_position_fallback
-------------------------------
(default=[])

If there're no includes present, then an include position has to be chosen. With
`g:cpp_include_position_fallback` it's possible to automatically choose the first position:

    let g:cpp_include_position_fallback = [
       \ { 'line_regex': '^// includes', 'pos': 'below' },
       \ { 'line': 1, 'pos': 'above' } ]

This would first search for a line matching `^// includes`, and if one could be found, the
include would be placed below it. Otherwise the include would be placed above the first line.

g:cpp_include_origins
---------------------
(default={})

Beside the already shown entries in the `Quick Start` section, an origin can additionally contain
a `symbol_regex` entry. This is used as another filter on the tags.

E.g. by default the `std` origin gets `\v^std::` as its `symbol_regex`. If
`:CppInclude` gets called and the cursor is above `std::vector`, then the
`symbol_regex` will match and only tags from the origin `std` are considered
for the name `vector`.

So it's most useful for sources with different namespaces that might contain
the same names. Without `symbol_regex` the tags with the same names would
collide and the user has to choose which tag should be used.

Credits
=======

The tags for the C++ standard library are only possible because of the cleaned up header
files from [cppreference](https://cppreference.com). Thanks a lot to `cppreference` for allowing
the usage with `vim-cpp-include`!
