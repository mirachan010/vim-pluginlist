## endwize.vim

This is a clone of endwise.vim. ( http://www.vim.org/scripts/script.php?script\_id=2386 )
This plugin supports `if end`-like syntax input.

### append information of the head of structure

Sometimes, the structure is too big to know where the structure starts.
The big structure often seen in C or C++
include-guard.

```c
#ifndef _HOGE_HPP_INCLUDED_
#define _HOGE_HPP_INCLUDED_

// many class definitions...

#endif // <- This endif is too far to know where the structure starts!
```

So, this plugin supports to know that.

```c
#ifndef _HOGE_HPP_INCLUDED_ {cursor}
```

If the cursor is placed at `{cursor}` and you type `<CR>`,

```c
#ifndef _HOGE_HPP_INCLUDED_
{cursor}
#endif // #ifndef _HOGE_HPP_INCLUDED_
```

`#endif` and `// #ifndef _HOGE_HPP_INCLUDED_` is appended at the same time.
If you want to use this feature, you should setting `g:endwize_add_info_filetypes`.
`g:endwize_add_info_filetypes` is List of String and you specify filetypes where
you want to append the information.

Example:
```VimL
" append information when filetype is ruby, c or cpp.
let g:endwize_add_info_filetypes = ['ruby', 'c', 'cpp']
```

### mapping

This plugin doesn't map any keys unlike an original one.
If you can use `imap`, mapping would be like below.

```
imap <silent><CR> <CR><Plug>DiscretionaryEnd
```

If `imap` is unavailable because of other features for `<CR>`,
mapping would be like below.

```
inoremap <silent><CR> <CR><C-r>=endwize#crend()<CR>
```

For example, when you want to use both `smart_close_popup()` of neocomplcache-snippets-complete
and endwize.vim at typing `<CR>`, mapping would be like below.

```
inoremap <silent><expr><CR> (pumvisible() ? neocomplcache#smart_close_popup() : "")."\<CR>\<C-r>=endwize#crend()\<CR>"
```
