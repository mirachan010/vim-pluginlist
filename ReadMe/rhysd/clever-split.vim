Split a Window Cleverly
=======================

This plugin provides clever commands to split window and open help window.

- `:CleverSplit` automatically determines the way to split the window, horizontally or vertically and adjusts window width.
- `:CleverHSplit` splits window horizontally and adjusts window width.
- `:CleverVSplit` splits window vertically and adjusts window width.
- `:CleverHelp` opens help in cleverly opened window.

If `g:clever_split#overwrite_default_mappings` is defined, `<C-w>w`, `<C-w>v` and `K` (`K` is in vim) are overwritten and `<C-w><Leader>` is defined automatically.

If you customize the behavior, `g:clever_split#winwidth_limit` and `g:clever_split#width_height_rate` are available.

### License

This plugin is distributed under the MIT license

  Copyright (c) 2013 rhysd

  Permission is hereby granted, free of charge, to any person obtaining
  a copy of this software and associated documentation files (the
  "Software"), to deal in the Software without restriction, including
  without limitation the rights to use, copy, modify, merge, publish,
  distribute, sublicense, and/or sell copies of the Software, and to
  permit persons to whom the Software is furnished to do so, subject to
  the following conditions:
  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
