# oldfilesearch.vim

Add `:OldFileSearch` command for searching the `:oldfiles` list
and editing one file.


## Examples

```VimL
" Select old files that contain vimrc in their name

:OldFileSearch vimrc

" Select oldfiles that contain both "ftpl" and "python.vim" in their
" full path.  This should match ~/.vim/ftplugin/python.vim if present
" in :oldfiles.

:OldFileSearch ftpl python.vim
```
