# google-map.vim
This is plugin that can use google maps on Vim.

![](https://i.imgur.com/BelTJsm.gif)

## Rquirements
- Vim 7.4.1274 ~

## Installtion
e.g dein.vim
```toml
[[plugin]]
repo = 'skanehira/google-map.vim'
```

## Usage
```vim
" if you want to see route to {to} on google map.
:GoogleMap {from} {to}

" if you want see the address on google map.
:GoogleMap {address}
```

## How works

### Get address
https://www.google.com/maps?q={query}

### Get route
https://www.google.com/maps/dir/{from}/{to}

## Author
skanehira
