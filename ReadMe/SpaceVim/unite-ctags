unite-ctags
===================
unite-ctags is a [unite.vim](https://github.com/Shougo/unite.vim)'s source to
show current buffer's tag information by ctags.

Usage
-----
### open by unite.vim

open 

    :Unite ctags

global various
----------------
* g:ctags_util#ctags_command (default: 'ctags')

	a path string of ctags command.

* g:ctags_util#ctags_user_kinds (default: {})

	dictionary of kinds of ctags. a key is a language name, a value is a kinds.
	language names and kinds are referenced by 'ctags --list-kinds=all'

	example:

	    let g:ctags_util#ctags_user_kinds = {
	    	\ 'c++': 'cdefgnstu'
	    	\ }

* g:ctags_util#ctags_user_language (default: {})

	directory of filetype and supported language of ctags.
	a key is filetype, a value is language name of ctags.

	example:

	    let g:ctags_util#ctags_user_language = {
	    	\ 'javascript': 'js'
	    	\ }

