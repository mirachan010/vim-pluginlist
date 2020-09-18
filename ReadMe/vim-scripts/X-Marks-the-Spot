X Marks The Spot
================
Vim marks for pirates. Arr!

Easy mappings for creating and navigating through lower-case marks.

Basic usage
-----------
Default mappings:

- `<leader>x`: Add mark `x` in the current cursor location, where `x` is the next
available mark.
- `<leader>X`: Delete all marks at the current line.
- `<BS>`: Go to the previous closest mark (mode 1) or the previously
assigned mark (mode 2).
- `<S-BS>`: Go to next closest mark (mode 1) or the next assigned mark
(mode 2).

To override them, add the following to your vimrc:

	nmap <unique> <leader>x <Plug>XmarksthespotAddmark
	nmap <unique> <leader>X <Plug>XmarksthespotRemovemarks
	nmap <unique> <S-BS> <Plug>XmarksthespotNextmark
	nmap <unique> <BS> <Plug>XmarksthespotPreviousmark

Install
-------

Just place in your `.vim/plugins` directory. Pathogen ready.

Options
-------

To set options, set their values in your vimrc.

### X\_MARKS\_NAVIGATION\_MODE

Choose between two mark navigation modes. 

- `let g:X_MARKS_NAVIGATION_MODE = 1` - (default) Move through marks based on position.
Basically just calls `['` and `]'` for moving backward and forward, respectively.

- `let g:X_MARKS_NAVIGATION_MODE = 2` - Move through marks based on the order of
their assignment, regardless of their positions.

### X\_MARKS\_RESET\_MARKS\_ON\_BUF\_READ

- `let g:X_MARKS_RESET_MARKS_ON_BUF_READ = 0` - (default) Don't clear all buffer
marks when initializing X Marks The Spot for the current buffer.

- `let g:X_MARKS_RESET_MARKS_ON_BUF_READ = 1` - Clear all buffer
marks when initializing X Marks The Spot for the current buffer.

### X\_MARKS\_SHOW\_SIGNS

(Experimental)

- `let g:X_MARKS_SHOW_SIGNS = 0` - Don't show signs for mark location

- `let g:X_MARKS_SHOW_SIGNS = 1` - (default) Show signs for mark location

To Do List
----------

1. Allow mode 1 to "cycle" to the first/last mark when at the last/first mark.
2. Add an option to limit one mark per line. (DONE)
3. Don't store marks in a dict anymore.
4. Show signs for marks.

License
-------

Copyright (c) John Louis Del Rosario. Distributed under the same terms as Vim
itself. See `:help license`.
