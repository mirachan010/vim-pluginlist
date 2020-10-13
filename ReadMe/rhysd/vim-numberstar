## Search numbers quickly with `*`

This Vim plugin makes normal mode mapping `*` match number representations such as `-123`, `12.5`, `10e5`, `0x10`.
I made this mapping because original `*` mapping can't match them and it's inconvenient when I want to search magic numbers in a file.

This plugin never override any mappings.  So you should write setting in your vimrc as you like.

### Vimrc setting example

```vim
nnoremap <expr>*  numberstar#key('*')
nnoremap <expr>#  numberstar#key('#')
nnoremap <expr>g* numberstar#key('g*')
nnoremap <expr>#* numberstar#key('#*')
```

This plugin is distributed under [the MIT License](http://opensource.org/licenses/MIT).
