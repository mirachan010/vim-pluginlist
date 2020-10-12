tnite.vim
===

Apply action to output of `:terminal`.
It's simple.


Usage
---

Call `tnite#start(command, action, option)`.


Command
---

String or List.

Tnite executes the command, and pass the output to action.


Actions
---

* `edit`: Open a file in current buffer.
* `tabedit`: Open files with a new tab.
* `switch`: Switch to a window that opens the specified file if it is opened. If not, fallback to `edit` action.
* `switchtab`: Same as `switch` action, but it fallback to `tabedit`.
* `jump`: Jump to the line number.

See `g:tnite#actions` for more information.

Options
----

### `jump_to_line`

Default: false

Jump to specified line number. Format is `file_name:lineno`.
Example: `autoload/tnite.vim:42`


Example
---



```vim
" Find a file from git with peco, and open it in a new tab.
nnoremap <silent><Space>f :<C-u>call tnite#start(["sh", "-c", "git ls-files \| peco --initial-filter Fuzzy"], "tabedit", {})<CR>

" Grep with word under the cursor.
nnoremap <silent><Space>g :<C-u>call tnite#start(["sh", "-c", "git grep --line-number " . shellescape(expand('<cword>')) . " \| peco --initial-filter Fuzzy \| cut -d : -f 1,2"], "tabedit", { "jump-to_line": v:true })

" Grep the current buffer and jump to the specified line.
nnoremap <silent><Space>j :<C-u>call tnite#start(["sh", "-c", "nl -b a -w1 -s ':\t' " . shellescape(expand('%:p')) . "\| peco \| cut -d : -f 1"], "jump", {})
```
