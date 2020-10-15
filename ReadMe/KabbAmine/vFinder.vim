# vFinder [EXPERIMENTAL]

![Badge version](https://img.shields.io/badge/version-0.0.9-blue.svg?style=flat-square "Badge for version")
![License version](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square "Badge for license")

A versatile finder for vim.

![Demo of vFinder](.img/vfinder_demo.gif "Old demo of vFinder")

Pros:

- Many built-in sources & features
- Works fast for medium sized projects (<= 50000 files), thanks to timers & external tools like `rg`, `ag`...
- Easily customizable
- Full vimscript, no external dependencies

Cons:

- Is a playground plugin and may change a lot (until v1.0).
- Is not windows compatible yet.
- Is non asynchronous (yet?) (but use timers to quickly filter candidates).
- No custom matching/sorting algorithm yet.
- Needs a recent version of vim to benefit of all features.

# Usage

```viml
call vfinder#i({source}[, {options}])
```

- `{source}` can be a [built-in source](#default-sources) or a custom one.
- `{options}` is a dictionnary of [facultative options](#default-sources-options) relative to the buffer/window.

```viml
" Execute a default source
call vfinder#i('files')

" Same thing but with fuzzy mode enabled
call vfinder#i('files', {'fuzzy': 1})

" Fuzzy mode in a vertical split window and an initial query for filtering
call vfinder#i('tags_in_buffer', {
        \   'fuzzy': 1
        \   'win_pos': 'vertical',
        \   'query': expand('<cexpr>')
        \ })

" You can pass an argument(s) to the source, here an example with an initial query for the grep source
call vfinder#i('grep', {
        \   'args': 'foo'
        \ })

" Custom source
call vfinder#i({
        \   'name'      : 'custom',
        \   'to_execute': ['~/.foo', '~/lab/bar'],
        \   'maps'      : {
        \       'i': {'<CR>': {'action': 'cd %s', 'options': {}}},
        \       'n': {'<CR>': {'action': 'cd %s', 'options': {}}}
        \   }
        \ })
```

The candidates are gathered from the key `to_execute` which can be:

- A filename : `'path/to/foo'`
- A funcref : `function('s:foo')`
- A list : `['foo', 'bar']`
- A shell command: `'foo -f --flag2'`

There are no mappings provided for executing sources, please define your owns (See the example of configuration below).

# Global options

| options                         | default value                     | description                                    |
| ------------------------------- | --------------------------------- | ---------------------------------------------- |
| `g:vfinder_fuzzy`               | `0`                               | Enable/Disable fuzzy matching                  |
| `g:vfinder_default_match_mode`  | `'default'`                       | Match mode ('match_position', 'compact_match') |
| `g:vfinder_win_pos`             | `'topleft'`                       | Default position of the window                 |
| `g:vfinder_flash`               | `1`                               | Flash target line when executing some actions  |
| `g:vfinder_cache_path`          | `$HOME . '/.cache/vfinder'`       | Directory where to store cache files           |
| `g:vfinder_yank_source_enabled` | `1`                               | Enable/Disable yank source which use caching   |
| `g:vfinder_mru_source_enabled`  | `1`                               | Enable/Disable mru source which use caching    |
| `g:vfinder_maps`                | _See the part about **Mappings**_ | Global & per sources actions/mappings          |

# <a name="default-sources">Default sources</a>

The built-in sources:

| source name                  | description                             | args (optional)                     | default actions                                                       |
| ---------------------------- | --------------------------------------- | ----------------------------------- | --------------------------------------------------------------------- |
| `buffers`                    | List of buffers                         | -                                   | edit, edit in (v)split/tab, wipe, toggle hiddens                      |
| `colors`                     | List of installed colorschemes          | -                                   | apply, preview                                                        |
| `command_history`            | History of vim commands                 | -                                   | execute, echo                                                         |
| `commands`                   | Vim commands                            | -                                   | execute, echo                                                         |
| `directories`                | List of directories in the cwd          | -                                   | goto, go back, cd                                                     |
| `files`<sup>n</sup>          | Recursive list of files in the cwd      | -                                   | open, open in a (v)split/tab, toggle git flags                        |
| `git_commits`                | Log of git commits of current wd        | -                                   | use sha (use fugitive if installed), diff (needs fugitive), diff stat |
| `grep`                       | Ask for a query and grep using &grepprg | query: _should not be empty_        | goto, open in (v)split/tab, preview                                   |
| `help`                       | Help files                              | -                                   | open, open_in_vsplit                                                  |
| `lines`                      | Lines of current buffer                 | -                                   | goto, open in (v)split/tab                                            |  |
| `marks`                      | List of marks                           | -                                   | goto, delete                                                          |
| `mru`<sup>c</sup>            | List of recent files                    | -                                   | open, open in a (v)split/tab                                          |
| `oldfiles`                   | Output of `:oldfiles`                   | -                                   | open, open in a (v)split/tab                                          |
| `qf`                         | List of qf/loclist items                | type: _[q]f (default) or [l]oclist_ | goto, open in (v)split/tab, preview                                   |
| `registers`                  | Values of registers                     | -                                   | paste                                                                 |
| `spell`                      | Suggestions for the current word        | -                                   | use suggestion                                                        |
| `tags_in_buffer`<sup>t</sup> | List of tags in current buffer          | -                                   | goto, open in a (v)split                                              |
| `tags`                       | List of tags from tagfiles              | -                                   | goto, open in (v)split/tab, preview                                   |
| `windows`                    | List of windows in all tabs             | -                                   | goto                                                                  |
| `yank`<sup>c</sup>           | All yanked elements                     | -                                   | paste                                                                 |

_**<sup>n</sup>** Need `rg`, `ag`, `git` or `find`._  
_**<sup>t</sup>** Need `ctags`._  
_**<sup>c</sup>** Use cache files._

The default mappings are usually: `<CR>`, `<C-s>`, `<C-v>`, `<C-t>`, `<C-o>` (see [per source mappings](#per-source-mappings))

## <a name="default-sources-options">Source options</a>

| option    | default value       | description                                                            |
| --------- | ------------------- | ---------------------------------------------------------------------- |
| `args`    | `''`                | Argument to be passed to the source (e.g. a query for the grep source) |
| `fuzzy`   | `g:vfinder_fuzzy`   | Fuzzy mode                                                             |
| `query`   | `''`                | Initial query for filtering                                            |
| `win_pos` | `g:vfinder_win_pos` | Window's location                                                      |

# Mappings

The plugin defines mappings only for the vfinder file type and all of them can be
overwritten with `g:vfinder_maps`.  
The syntax to overwrite a default mapping is the following:

```viml
let g:vfinder_maps = {}
let g:vfinder_maps.scope = {
            \   'i': {
            \       'action1': 'keys',
            \       'action2': 'keys',
            \   },
            \   'n': {
            \       'action' : 'keys',
            \       'action2': 'keys',
            \   }
            \ }
```

Where `i` (insert) and `n` (normal) are the modes where the combination(s) action/keys operates.  
And where `scope` can be:

- `_`: Global mappings that affect all vfinder windows.
- `<source_name>`: Mappings specific to the `<source_name>`.

## Global mappings

| mode(s) | action                 | description                                                          | default value |
| :-----: | ---------------------- | -------------------------------------------------------------------- | :-----------: |
|   `n`   | `window_quit`          | -                                                                    |    `<Esc>`    |
|   `i`   | `prompt_backspace`     | -                                                                    |    `<BS>`     |
|   `i`   | `prompt_delete`        | -                                                                    |    `<Del>`    |
|   `i`   | `prompt_delete_line`   | -                                                                    |    `<C-u>`    |
|   `i`   | `prompt_delete_word`   | -                                                                    |    `<C-w>`    |
|   `i`   | `prompt_move_down`     | -                                                                    |    `<C-n>`    |
|   `i`   | `prompt_move_left`     | -                                                                    |    `<C-h>`    |
|   `i`   | `prompt_move_right`    | -                                                                    |    `<C-l>`    |
|   `i`   | `prompt_move_to_end`   | -                                                                    |    `<C-e>`    |
|   `i`   | `prompt_move_to_start` | -                                                                    |    `<C-a>`    |
|   `i`   | `prompt_move_up`       | -                                                                    |    `<C-p>`    |
|   `n`   | `start_insert_mode_a`  | -                                                                    |      `a`      |
|   `n`   | `start_insert_mode_A`  | -                                                                    |      `A`      |
|   `n`   | `start_insert_mode_i`  | -                                                                    |      `i`      |
|   `n`   | `start_insert_mode_I`  | -                                                                    |      `I`      |
|   `n`   | `new_query`            | Delete current query and start insert mode                           |     `cc`      |
| `i`/`n` | `candidates_update`    | Refresh candidates                                                   |  `<C-r>`/`R`  |
| `i`/`n` | `cache_clean`          | Delete cache file if it exists                                       | `<F5>`/`<F5>` |
| `i`/`n` | `fuzzy_toggle`         | Enable/Disable fuzzy mode                                            |  `<C-f>`/`F`  |
| `i`/`n` | `toggle_maps_in_sl`    | Show and toggle between source and global mappings in the statusline | `<F1>`/`<F1>` |
| `i`/`n` | `send_to_qf`           | Send current candidates to the quickfix list                         |  `<C-q>`/`q`  |

e.g.

```viml
let g:vfinder_maps = {}
let g:vfinder_maps._ = {
            \   'i': {'candidates_update': '<C-f>'},
            \   'n': {'window_quit'      : 'q'}
            \ }
```

## <a name="per-source-mappings">Per source mappings</a>

### buffers

|  modes  | action       | default value |
| :-----: | ------------ | :-----------: |
| `i`/`n` | `edit`       | `<CR>`/`<CR>` |
| `i`/`n` | `split`      |  `<C-s>`/`s`  |
| `i`/`n` | `vsplit`     |  `<C-v>`/`v`  |
| `i`/`n` | `tab`        |  `<C-t>`/`t`  |
| `i`/`n` | `wipe`       | `<C-d>`/`dd`  |
| `i`/`n` | `toggle_all` |  `<C-o>`/`o`  |

### colors

|  modes  | action    | default value |
| :-----: | --------- | :-----------: |
| `i`/`n` | `apply`   | `<CR>`/`<CR>` |
| `i`/`n` | `preview` |  `<C-o>`/`o`  |

### commands/command_history

|  modes  | action    | default value |
| :-----: | --------- | :-----------: |
| `i`/`n` | `execute` | `<CR>`/`<CR>` |
| `i`/`n` | `echo`    |  `<C-o>`/`o`  |

### directories

|  modes  | action    | default value |
| :-----: | --------- | :-----------: |
| `i`/`n` | `goto`    | `<CR>`/`<CR>` |
| `i`/`n` | `go_back` |  `<C-v>`/`v`  |
| `i`/`n` | `cd`      |  `<C-s>`/`s`  |

### files

|  modes  | action             | default value |
| :-----: | ------------------ | :-----------: |
| `i`/`n` | `edit`             | `<CR>`/`<CR>` |
| `i`/`n` | `split`            |  `<C-s>`/`s`  |
| `i`/`n` | `vsplit`           |  `<C-v>`/`v`  |
| `i`/`n` | `tab`              |  `<C-t>`/`t`  |
| `i`/`n` | `toggle_git_flags` | `<C-g>`/`gi`  |

### git_commits

|  modes  | action      | default value |
| :-----: | ----------- | :-----------: |
| `i`/`n` | `use_sha`   |  `<C-s>`/`s`  |
| `i`/`n` | `diff_stat` |  `<C-o>`/`o`  |
| `i`/`n` | `diff`      | `<CR>`/`<CR>` |

### grep/qf

|  modes  | action            | default value |
| :-----: | ----------------- | :-----------: |
| `i`/`n` | `goto`            | `<CR>`/`<CR>` |
| `i`/`n` | `split_and_goto`  |  `<C-s>`/`s`  |
| `i`/`n` | `vsplit_and_goto` |  `<C-v>`/`v`  |
| `i`/`n` | `tab_and_goto`    |  `<C-t>`/`t`  |
| `i`/`n` | `preview`         |  `<C-o>`/`o`  |

### help

|  modes  | action           | default value |
| :-----: | ---------------- | :-----------: |
| `i`/`n` | `open`           | `<CR>`/`<CR>` |
| `i`/`n` | `open_in_vsplit` |  `<C-v>`/`v`  |

### lines

|  modes  | action            | default value |
| :-----: | ----------------- | :-----------: |
| `i`/`n` | `goto`            | `<CR>`/`<CR>` |
| `i`/`n` | `split_and_goto`  |  `<C-s>`/`s`  |
| `i`/`n` | `vsplit_and_goto` |  `<C-v>`/`v`  |
| `i`/`n` | `tab_and_goto`    |  `<C-t>`/`t`  |

### marks

|  modes  | action   | default value |
| :-----: | -------- | :-----------: |
| `i`/`n` | `goto`   | `<CR>`/`<CR>` |
| `i`/`n` | `delete` | `<C-d>`/`dd`  |

### mru/oldfiles

|  modes  | action   | default value |
| :-----: | -------- | :-----------: |
| `i`/`n` | `edit`   | `<CR>`/`<CR>` |
| `i`/`n` | `split`  |  `<C-s>`/`s`  |
| `i`/`n` | `vsplit` |  `<C-v>`/`v`  |
| `i`/`n` | `tab`    |  `<C-t>`/`t`  |

### tags_in_buffer

|  modes  | action            | default value |
| :-----: | ----------------- | :-----------: |
| `i`/`n` | `goto`            | `<CR>`/`<CR>` |
| `i`/`n` | `split_and_goto`  |  `<C-s>`/`s`  |
| `i`/`n` | `vsplit_and_goto` |  `<C-v>`/`v`  |

### spell

|  modes  | action | default value |
| :-----: | ------ | :-----------: |
| `i`/`n` | `use`  | `<CR>`/`<CR>` |

### tags

|  modes  | action            | default value |
| :-----: | ----------------- | :-----------: |
| `i`/`n` | `goto`            | `<CR>`/`<CR>` |
| `i`/`n` | `split_and_goto`  |  `<C-s>`/`s`  |
| `i`/`n` | `vsplit_and_goto` |  `<C-v>`/`v`  |
| `i`/`n` | `tab_and_goto`    |  `<C-t>`/`t`  |
| `i`/`n` | `preview`         |  `<C-o>`/`o`  |

### windows

|  modes  | action | default value |
| :-----: | ------ | :-----------: |
| `i`/`n` | `goto` | `<CR>`/`<CR>` |

### yank/registers

|  modes  | action  | default value |
| :-----: | ------- | :-----------: |
| `i`/`n` | `paste` | `<CR>`/`<CR>` |

e.g. of defining custom mappings:

```viml
" Define g:vfinder_maps only if its not already defined.
let g:vfinder_maps = {}

let g:vfinder_maps.buffers = {
            \   'i': {
            \       'split' : '<C-k>',
            \       'vsplit': '<C-z>'
            \   }
            \ }
let g:vfinder_maps.spell = {
            \   'i': {'use': '<C-z>'}
            \   'n': {'use': 'zz'}
            \ }
```

# Create a source

**TODO**

## Source options

- name
- is_valid
- to_execute
- format_fun
- candidate_fun
- syntax_fun
- match_mode
- maps

## Actions

```viml
{
  i:{'action_name': {'action': '%s', 'options': {<see below>}}},
  n:{'action_name': {'action': '%s', 'options': {<see below>}}},
}
```

## Action map options

- clear_prompt: `0`
- echo : `0`
- execute_in_place : `1`
- flag: `0`
- function : `0`
- goto_prompt : `0`
- quit : `1`
- silent : `1`
- update : `0`

# My configuration

```viml
let g:vfinder_fuzzy = 0
let g:vfinder_win_pos = 'botright'
let g:vfinder_default_match_mode = 'compact_match'
let g:vfinder_maps = {}
let g:vfinder_maps._ = {
            \   'n': {'window_quit': 'q'},
            \   'i': {
            \       'toggle_maps_in_sl': '<Tab>',
            \       'cache_clean': '<C-x>'
            \   }
            \ }

nnoremap <silent> ,f :call vfinder#i('files')<CR>
nnoremap <silent> ,b :call vfinder#i('buffers')<CR>
nnoremap <silent> ,r :call vfinder#i('mru')<CR>
nnoremap <silent> ,t :call vfinder#i('tags')<CR>
nnoremap <silent> ,,f :call vfinder#i('tags_in_buffer', {
            \   'win_pos': 'aboveleft'
            \ })<CR>
nnoremap <silent> ,c :call vfinder#i('commands', {'fuzzy': 1})<CR>
nnoremap <silent> ,,c :call vfinder#i('command_history')<CR>
nnoremap <silent> ,w :call vfinder#i('windows')<CR>
nnoremap <silent> ,d :call vfinder#i('directories', {'win_pos': 'tab'})<CR>
nnoremap <silent> ,h :call vfinder#i('help')<CR>
nnoremap <silent> ,m :call vfinder#i('marks')<CR>
nnoremap <silent> ,l :call vfinder#i('lines', {'win_pos': 'aboveleft'})<CR>

" yank
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> ,y :call vfinder#i('yank')<CR>
inoremap <silent> <A-y> <Esc>:call vfinder#i('yank')<CR>

" spell
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> z= :call vfinder#i('spell', {
            \   'win_pos': 'topleft vertical'
            \ })<CR>
inoremap <silent> <A-z> <Esc>:call vfinder#i('spell', {
            \   'win_pos': 'topleft vertical'
            \ })<CR>

" qf
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""

command! VFQf call <SID>vfinder_qf()

fun! s:vfinder_qf() abort " {{{2
    if getwininfo(win_getid(winnr()))[0].loclist
        call vfinder#i('qf', {'args': 'l', 'win_pos': 'topleft'})
    else
        call vfinder#i('qf', {'win_pos': 'topleft'})
    endif
endfun " 2}}}

" git_commits
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""

highlight! link vfinderGitCommitsDiffStatPlus Question
highlight! link vfinderGitCommitsDiffStatMinus Error
nnoremap <silent> ,gc :call vfinder#i('git_commits', {'win_pos': 'tab'})<CR>

" grep
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nnoremap <silent> ,,g :call vfinder#i('grep')<CR>
" xnoremap <silent> ,,g :call <SID>vfinder_grep_visual()<CR>
" nnoremap <silent> ,g <Esc>:setlocal operatorfunc=<SID>vfinder_grep_motion<CR>g@

" fun! s:vfinder_grep_visual() abort " {{{2
"     call vfinder#i('grep', {'args': ka#selection#get_visual_selection()})
" endfun " 2}}}

" fun! s:vfinder_grep_motion(...) abort " {{{2
"     call vfinder#i('grep', {'args': ka#selection#get_motion_result()})
" endfun " 2}}}
```

# External sources

- [vfinder-cmus](https://github.com/KabbAmine/vfinder-cmus.vim)

# Inspiration

- [unite](https://github.com/Shougo/unite.vim)
- [fzf](https://github.com/junegunn/fzf.vim)
- [GV](https://github.com/junegunn/gv.vim)
- [agit](https://github.com/cohama/agit.vim)

# Note

There are a lot of things planned for the plugin, but as a side project, I implement what I need when I have time.

# License

MIT
