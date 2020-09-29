# StatuslineUpdateTimer : vim statusline periodic update plugin

## attached
- Generic clock function - Common usage:statusline clock

## Installation

### [dein](https://github.com/Shougo/dein.vim)
Add this section in  `dein.toml`.

```toml
[[plugins]]
repo = 'tsuyoshicho/StatuslineUpdateTimer.vim'
```

## Usage
Install via vim or plugin manager.

Vim statusline is updated automatically.

### Commands

When manually start.

```vim
:StatuslineUpdateStart
```

And then manually stop.

```vim
:StatuslineUpdateStop
```

### Option variable

```vim
g:StatuslineUpdateTimer#enable
```

Plugin enable/disable.
Set as before plugin load.

default value: `1`(enable) .

```vim
g:StatuslineUpdateTimer#updatetime
```

Statusline update interval.
Set as before plugin load.

default value: same as `updatetime`.

```vim
g:StatuslineUpdateTimer#adjust_minute
```

Update interval adjust next min+1sec point.
If set as enable, `g:StatuslineUpdateTimer#updatetime` are no affect.

```vim
g:StatuslineUpdateTimer#interval_function
```

Interval call function. default `redrawstatus!` call

```vim
g:StatuslineUpdateTimer#clockformat
```

Clock function format(strftime style).

default value: `'%m/%d(%a) %H:%M'`.

### Function

```vim
StatuslineUpdateTimer#clock()
```

Return formatted clock string.

```vim
StatuslineUpdateTimer#emoji_clock()
```

Return emoji clock string.

### Use-case

#### case 1. statusline direct setting
Write to `.vimrc`.

```vim
set statusline=%{StatuslineUpdateTimer#clock()}
```

#### case 2. lightline at dein
When use [dein](https://github.com/Shougo/dein.vim) plugin manager and [lightline](https://github.com/itchyny/lightline.vim) plugin,
write to `dein.toml`.

```toml
[[plugins]]
repo = 'itchyny/lightline.vim'
depends = ['StatuslineUpateTimer.vim']
hook_add = '''
  let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'readonly', 'filename', 'modified' ]
      \   ],
      \   'right': [
      \     ['clock'],
      \     ['lineinfo', 'percent'],
      \     ['fileformat', 'fileencoding', 'filetype'],
      \   ]
      \ },
      \ 'component_function': {
      \   'clock': 'StatuslineUpdateTimer#clock',
      \ },
      \ }
'''
```

#### case 3. sky-color-clock.vim
Setting : see [mopp/sky-color-clock.vim](https://github.com/mopp/sky-color-clock.vim)

## Limitation

Buffer refreshed by timer.
As a result, opening splash-string,multiline message disappears.

## Author
- Tsuyoshi CHO (https://github.com/tsuyoshicho)

## License
This software is released under the MIT License, see LICENSE.
