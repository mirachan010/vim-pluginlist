# vim-tslint-config

Wrapper for [tslint](https://palantir.github.io/tslint/).

## Motivations

I want to load `tslint` config file dynamically.

[Syntastic](https://github.com/scrooloose/syntastic) can use `tslint` but not support config file.

[watchdocs.vim](https://github.com/osyo-manga/vim-watchdogs) also has `tslint` settings but not supporting config file.

## Configure

Add `tslint` config file name to your `.vimrc`.
```viml
" tslint.vim {{{
let g:tslint_configs = [
  \ 'tslint-config-standard',
  \ 'tslint.json'
  \ ]
" }}}
```

## Usage

```viml
:Tslint
```
If you did not set any args, `vim-tslint` would search `g:tslint_configs`'s value and if config found, use it.

```viml
:Tslint -c tslint-config-standard
```
You can select `tslint` config file via command line.

```viml
:silent make|redraw|copen
```
Execute `tslint` via `:make`.

## Helpful plugins

[QuickFixstatus](https://github.com/dannyob/quickfixstatus) shows error message at the bottom of the screen.

[Hier](https://github.com/cohama/vim-hier) will highlight `quickfix` errors and location list entries in buffer.

## Integration

`vim-tslint` can integrate with [watchdocs.vim](https://github.com/osyo-manga/vim-watchdogs).

Configure followings to your `.vimrc`.
```viml
" Enable vim-tslint config
let g:quickrun_config['javascript/watchdogs_checker'] = {
  \ 'type': 'watchdogs_checker/tslint',
  \ 'hook/watchdogs_quickrun_running_tslint/enable': 1,
  \ }
```

Run `watchdocs.vim`.

```viml
:WatchdogsRun
```

Run `Tslint and WatchdogsRun` at once.
```viml
:TslintRun -c tslint-config-standard
```
