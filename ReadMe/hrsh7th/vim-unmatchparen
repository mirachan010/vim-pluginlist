# vim-unmatchparen

highlights unmatched paren.

# limitation
Currently implementations has no supports to detect too many open/close parentheses.
It is very difficult... please any suggetion.

# options

### g:unmatchparen#throttle (default: 500)
Settings for throttle timeout.

### g:unmatchparen#is_syntax_detection_enabled (default: 1)
Settings for toggle syntax detection.

### g:unmatchparen#ignore_syntaxes (default: ['Comment', 'String'])
Settings for detect syntaxes.

### g:unmatchparen#disable_pairs (default: { '<': '>' })
Settings for disable pairs.

### g:unmatchparen#highlight_priority (default: 100)
Settings for highlight priority. `help matchaddpos`

### g:unmatchparen#disable_filetypes (default: [])
Settings for disable specific filetypes.

### g:unmatchparen#pairs_for_filetype (default: { 'vim': { ... } })
Settings for pairs for specific filetype.

```VimL
let g:unmatchparen#pairs_for_filetype = {
  \   'vim': {
  \     'if': 'endif',
  \     'for': 'endfor'
  \   }
  \ }
```

### g:unmatchparen#debug (default: 0)

# demo

![demo1](https://user-images.githubusercontent.com/629908/52392193-15503980-2ae4-11e9-88b6-7c28a8b9c2cc.png)
![demo2](https://user-images.githubusercontent.com/629908/52392099-d28e6180-2ae3-11e9-9314-7cb352b8ac5c.png)


# note

implementation is heavyly inspired by itchny/vim-parenmatch. thanks.

