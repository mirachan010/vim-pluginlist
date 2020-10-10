# :diamond_shape_with_a_dot_inside: dhall-to-vim :diamond_shape_with_a_dot_inside:

The dhall-lang language binding for Vim script.

- [dhall-lang/dhall-lang](https://github.com/dhall-lang/dhall-lang)

## Requirements

- [vital.vim](https://github.com/vim-jp/vital.vim)
- [dhall-json](https://hackage.haskell.org/package/dhall-json)
    - `stack install dhall-json`

## Modules
### Dhall

Interprets dhall's expressions to the Vim script's value.

```vim
echo Dhall.read('10')
" 10

echo Dhall.read('{foo = 10}')
" {'foo': 10}

echo Dhall.read('<Foo = 10 | Bar : Natural>')
" 10
```

### Dhall.parser

Now, only the spec.
([./test/Dhall/Parser.vimspec](./test/Dhall/Parser.vimspec))
