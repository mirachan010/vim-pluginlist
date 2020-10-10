vim-magicalize
===

This is Vim plugin for converting several pattern to magic pattern.

Usage
---

### Functions

```vim
" You can use following functions for converting several pattern to magic pattern.
" This is function's format.
"   magicalize#magicalize([pattern])
"   magicalize#verymagicalize([pattern])
"   magicalize#nomagicalize([pattern])
"   magicalize#verynomagicalize([pattern])

" Convert very magic pattern '\v^(hoge)*(fuga)+$' to magic pattern '\m^\(hoge\)*\(fuga\)\+$'
echom magicalize#magicalize('\v^(hoge)*(fuga)+$')

" Convert magic pattern '\m^\(hoge\)*\(fuga\)\+$' to very magic pattern '\v^(hoge)*(fuga)+$'
echom magicalize#verymagicalize('\m^\(hoge\)*\(fuga\)\+$')

" Convert magic pattern '\m^\(hoge\)*\(fuga\)\+$' to nomagic pattern '\M^\(hoge\)\*\(fuga\)\+$'
echom magicalize#nomagicalize('\m^\(hoge\)*\(fuga\)\+$')

" Convert magic pattern '\m^\(hoge\)*\(fuga\)\+$' to very nomagic pattern '\V\^\(hoge\)\*\(fuga\)\+\$'
echom magicalize#verynomagicalize('\m^\(hoge\)*\(fuga\)\+$')

" If no patten type specify, use 'magic' option.
" Look at following example.
" If set magic, following result is '\v^(hoge)*(fuga)+$'
" If set nomagic, this result is '\v^(hoge)\*(fuga)+$'
echom magicalize#verymagicalize('^\(hoge\)*\(fuga\)\+$')
```

### Operators

```vim
" You can use following operators.

" This operator like magicalize#magicalize({motion})
nmap <Leader>jm <Plug>(operator-magicalize)

" This operator like magicalize#verymagicalize({motion})
nmap <Leader>jv <Plug>(operator-verymagicalize)

" This operator like magicalize#nomagicalize({motion})
nmap <Leader>jM <Plug>(operator-nomagicalize)

" This operator like magicalize#verynomagicalize({motion})
nmap <Leader>jV <Plug>(operator-verynomagicalize)
```

License
---

MIT License
