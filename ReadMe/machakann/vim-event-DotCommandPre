# vim-event-DotCommandPre
Add an autocmd event 'DotCommandPre'

# Usage
If you are not using any other plugin defining key mapping to `.` key, add the line into your vimrc to use `<Plug>(event-DotCommandPre+Dot)`:

```vim
	nmap . <Plug>(event-DotCommandPre+Dot)
```

If you are using another plugin defining a key mapping to `.`, for example `<Plug>(CustomDot)`, then map `<Plug>(event-DotCommandPre)` before the key mapping:

```vim
	nmap . <Plug>(event-DotCommandPre)<Plug>(CustomDot)
```

If you are using [repeat.vim](https://github.com/tpope/vim-repeat), `<Plug>(RepeatDot)` definition is delayed. Thus, in order to ensure the mapping exists, add the lines:

```vim
	runtime autoload/repeat.vim
	nmap . <Plug>(event-DotCommandPre)<Plug>(RepeatDot)
```

# Requirement:
Vim 8.0 or higher

# License
NYSL license

* [Japanese](http://www.kmonos.net/nysl/)
* [English (Unofficial)](http://www.kmonos.net/nysl/index.en.html)
