Select various C and C++ block with only one mapping
====================================================

![screenshot](http://gifzo.net/BAZJOHOJXsM.gif)

`<Plug>(clang-select-next-extent)` mapping selects the extent in below order.

1. the most inner element at the cursor
2. expression
3. function
4. class
5. namespace
6. rotate to 1.

As default mapping, `<C-t>` is provided in C and C++ source.
If you want to assign your favorite key to `<Plug>(clang-select-next-extent)`, please add setting like following.

```vim
let g:clang_extent_selector_use_default_mapping = 0
" Map to <Leader><Leader>
augroup clang-extent-selector-mappings
    autocmd!
    autocmd FileType c,cpp map <buffer><Leader><Leader> <Plug>(clang-select-next-extent)
augroup END
```

## Dependency

This plugin requires [libclang-vim](https://github.com/rhysd/libclang-vim).  Please install and prepare it before installing clang-extent-selector.vim.

## License

    The MIT License (MIT)

    Copyright (c) 2014 rhysd

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

