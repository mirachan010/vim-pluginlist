# vim-eslint-config

Wrapper for [eslint](https://eslint.github.io/).

## Motivations

I want to load `eslint` config file dynamically.

[Syntastic](https://github.com/scrooloose/syntastic) can use `eslint` but not support config file.

[watchdocs.vim](https://github.com/osyo-manga/vim-watchdogs) also has `eslint` settings but not supporting config file.


## Configure

Add `eslint` config file name to your `.vimrc`.
```viml
" eslint.vim {{{
let g:eslint_configs = [
  \ 'eslint-config-standard',
  \ 'eslint-config-airbnb',
  \ '.eslintrc.js'
  \ ]
" }}}
```

## Usage

```viml
:Eslint
```
If you did not set any args, `vim-eslint` would search `g:eslint_configs`'s value and if config found, use it.

```viml
:Eslint -c eslint-config-standard
```
You can select `eslint` config file via command line.

```viml
:silent make|redraw|copen
```
Execute `eslint` via `:make`.

## Helpful plugins

[QuickFixstatus](https://github.com/dannyob/quickfixstatus) shows error message at the bottom of the screen.

[Hier](https://github.com/cohama/vim-hier) will highlight `quickfix` errors and location list entries in buffer.

## Integration

`vim-eslint` can integrate with [watchdocs.vim](https://github.com/osyo-manga/vim-watchdogs).

Configure followings to your `.vimrc`.
```viml
" Enable vim-eslint config
let g:quickrun_config['javascript/watchdogs_checker'] = {
  \ 'type': 'watchdogs_checker/eslint',
  \ 'hook/watchdogs_quickrun_running_eslint/enable': 1,
  \ }
```

Run `watchdocs.vim`.

```viml
:WatchdogsRun
```

Run `Eslint and WatchdogsRun` at once.
```viml
:EslintRun -c eslint-config-standard
```
