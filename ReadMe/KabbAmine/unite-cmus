# Unite-cmus

![Badge version](https://img.shields.io/badge/version-0.4-blue.svg?style=flat-square "Badge for version")
![License version](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square "Badge for license")

Description
-----------

[Cmus](https://cmus.github.io/) source for [unite](https://github.com/shougo/unite.vim) to play & queue :musical_note:.

![Unite-cmus demo](.img/demo.gif "Demo of unite-cmus")

Installation
-----------

You should of course have [unite](https://github.com/Shougo/unite.vim) installed.

Use your preferred method to install the plugin(s), I recommend you to use a plugin manager.  
e.g with [Vim-plug](https://github.com/junegunn/vim-plug) using group dependencies feature.

```vim
Plug 'KabbAmine/unite-cmus' | Plug 'Shougo/unite.vim'
```

Usage
-----

### Sources

The plugin provides 2 sources: `cmus` and `cmus/album`.  
Due to caching, the candidates are gathered very quickly except for the 1st time, (Depending of your music library).

:musical_note: :musical_note: :musical_note: :musical_note: :musical_note: :musical_note:

 ```vim
 :Unite cmus
```

Search for paths and file names.  
See the gif above.

:musical_note: :musical_note: :musical_note: :musical_note: :musical_note: :musical_note:

 ```vim
 `:Unite cmus/album`
```

Search for paths, file names and albums.

![Demo of cmus/album source](.img/cmus_album.png "Demo of cmus/album source")

**N.B:**
- This source can be slow to get candidates the 1st time.
- Due to vim's limitations, the formatting of non-ASCII characters may be strange (A PR is welcome).

![Case of non-ASCII characters](.img/non-ascii.png "Case of non-ASCII characters")

:musical_note: :musical_note: :musical_note: :musical_note: :musical_note: :musical_note:

### Actions

| action          | description                                         |
| -------------   | ------------------------                            |
| `play`          | Play the selected track (Action by default)         |
| `queue`         | Add the selected track(s) to the queue playlist     |
| `prepend2queue` | Prepend the selected track(s) to the queue playlist |

Configuration
-------------

### Cache

In `g:unite_cmus_cache_dir` you can specify a directory where the cache files wil be stored

By default they are created in `g:unite_data_directory . '/cmus/'` (Which if using unite's default configuration expends to `$XDG_CACHE_HOME/unite/cmus/`).

API (A very small one :tongue:)
-------------------------------

A global and unique function is provided to get some useful informations:

```vim
cmus#get()
```

It contains 2 properties & 1 method:

- `cache_dir`  

  Returns the cache directory.

- `current`  

  Returns a dictionnary containing informations about the the current played song: `{'artist': artist, 'title': title, 'album': album}`.

- `statusline_str()`

  Returns a nicely formatted string to use in a function for statusline: `♬  artist - title`  

  This is what it looks like in my config (I show/hide it with a key mapping):

  ![Current song in statusline](.img/cmus_statusline.png "Current song in statusline")

Bonus
-----

You may not need it, but if you want to have a global command to control cmus from vim, add this portion of code to your `vimrc` (Adapt `s:cmusCmds` to your needs):

```vim
if executable('cmus')
	let s:cmusCmds = {
				\ '-play'      : 'p',
				\ '-pause'     : 'u',
				\ '-stop'      : 's',
				\ '-next'      : 'n',
				\ '-previous'  : 'r',
				\ '-repeat'    : 'R',
				\ '-shuffle'   : 'S',
			\ }

	command! -nargs=? -complete=custom,CompleteCmus Cmus :call <SID>Cmus('<args>')

	function! <SID>Cmus(...) abort
		let l:arg = exists('a:1') && !empty(get(s:cmusCmds, a:1)) ?
					\ get(s:cmusCmds, a:1) : 'u'
		silent call system('cmus-remote -' . l:arg)
	endfunction

	function! CompleteCmus(A, L, P) abort
		return join(keys(s:cmusCmds), "\n")
	endfunction
endif
```

Then you'll have access to the command `:Cmus` (Use `-pause` when no argument is provided).

![Usage of Cmus command](.img/cmus-cmd.gif "Usage of Cmus command")


## Notes

Thanks to Bram Moolenaar for creating the best piece of software in the world :heart:  
Thanks to @shougo for the wonderful unite.  
Thanks to you if you're using unite-cmus.

## License

MIT
