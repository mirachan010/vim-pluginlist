[![Build Status](https://secure.travis-ci.org/AndrewRadev/modsearch.vim.png?branch=master)](http://travis-ci.org/AndrewRadev/modsearch.vim)

## Usage

The plugin exposes a single command, `:Modsearch`, which modifies the last performed search in a particular way, determined by its argument. For instance, after:

``` vim
/foobar
:Modsearch word
```

The current search term will now be not `foobar`, but `\<foobar\>`. You can use the `unword` modifier to remove the word limitation.

Currently, the available commands are:

- `word`: Wraps the last search term in word boundaries
- `unword`: Removes word boundaries from the last search term
- `ignore-syntax-comment`: Changes the search to ignore comments
- `ignore-syntax-string`: Changes the search to ignore strings

For the modifiers that ignore comments and strings, bear in mind that the pattern is invalidated if the buffer is changed. That's because they're implemented by specifically excluding particular line/column pairs.

## Contributing

Pull requests are welcome, but take a look at [CONTRIBUTING.md](https://github.com/AndrewRadev/modsearch.vim/blob/master/CONTRIBUTING.md) first for some guidelines.
