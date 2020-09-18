# project-guide.vim

This library provides cool UI to quickly open a project and file(s).
Currently `project_guide#open({project directories pattern})` does:

1. Choose a project (UI is [peco](https://github.com/peco/peco))
2. `:tcd {project directory}`
3. If a session file (default: `Session.vim`) is found and `load_session` is enabled
    1. Load the session file
4. If a session file is NOT found
    1. Choose file(s) (UI is peco (+ [files](https://github.com/mattn/files)) or [gof](https://github.com/mattn/gof))
    2. `:split {file(s)}`

## Examples

### Open `$GOPATH/src/*/*/*`

```vim
function! s:gopath_dirs_pattern() abort
  let root_dir = exists('$GOPATH') ? expand('$GOPATH') : expand('$HOME/go')
  let dirs_pattern = root_dir .. '/src/*/*/*'
  return dirs_pattern
endfunction
" call project_guide#define_command() at VimEnter,
" because project-guide.vim is not loaded yet in your vimrc.
autocmd VimEnter * call project_guide#define_command('Gopath', function('s:gopath_dirs_pattern'))
" Or with custom options
" autocmd VimEnter * call project_guide#define_command('Gopath', function('s:gopath_dirs_pattern'), #{peco_args: ['--select-1'], gof_args: ['-f']})
```

And project-guide.vim looks up a session file under project directory if `load_session == v:true` (default: `v:true`).<br>
You can emit the session file to restore window layout, and so on (see `:help session-file`).

If you want to auto-update `Session.vim` file in current project every 30 seconds:

```vim
autocmd User project-guide-post-tcd let t:vimrc_update_session_constantly = getcwd() . '/Session.vim'
autocmd User project-guide-post-file-open execute 'mksession!' t:vimrc_update_session_constantly
" Execute :mksession! in all tabpages which have t:vimrc_update_session_constantly
function! s:update_session(timer) abort
  if getcmdwintype() !=# ''    " :tabdo raises an error in cmdwin
    return
  endif
  let winid = win_getid()
  tabdo if t:->has_key('vimrc_update_session_constantly') | execute 'mksession!' t:vimrc_update_session_constantly | endif
  call win_gotoid(winid)
endfunction
" Call above function every 30 seconds
function! s:register_update_session() abort
  let sec = 1000
  call timer_start(30 * sec, function('s:update_session'), #{repeat: -1})
endfunction
call s:register_update_session()
```

**Recommend:**
By default Vim 'sessionoptions' value, it *replaces* current all open tabpages after loading a session file.<br>
If you want to *append* a tabpage of selected project, try `set sessionoptions-=tabpages` in your vimrc.

## Screenshots

Choose a project and files to open quickly.

![](https://i.imgur.com/v1LPefs.gif)

You can specify initial query (`:Gopath myproject`)
(and you can skip choosing a project by specifying `#{peco_args: ['--select-1']}`
when filtered project is only one)

![](https://i.imgur.com/joDXpt9.gif)

Open multiple files (Ctrl-Z to select).

![](https://i.imgur.com/V4cjMCW.gif)

Complete Ex command arguments (`:Gopath <Tab>` or `:Gopath myproj<Tab>`)

![](https://i.imgur.com/HcJaDji.gif)

See [peco](https://github.com/peco/peco) and [gof](https://github.com/mattn/gof)
page about customizing project / file UI.

### Open `$VOLTPATH/repos/*/*/*` of [Volt](https://github.com/vim-volt/volt) (Vim plugin manager)

I often open Vim plugin repositories to edit the scripts.

```vim
command! VoltRepos call s:volt_repos()
function! s:volt_repos() abort
  let root_dir = exists('$VOLTPATH') ? expand('$VOLTPATH') : expand('$HOME/volt')
  call project_guide#open(root_dir .. '/repos/*/*/*')
endfunction
```

![](https://i.imgur.com/kYyCuAn.gif)

And below `:Gof` and `:VoltPlugConf` commands are useful to open plugconf files.
(this does not use project-guide.vim though :)

```vim
command! -nargs=* -complete=dir Gof execute 'terminal ++close gof -t' .. (<q-args> !=# '' ? ' ' .. <q-args> : '')

function! s:volt_plugconf() abort
  let root_dir = exists('$VOLTPATH') ? '$VOLTPATH' : '$HOME/volt'
  return expand(root_dir .. '/plugconf')
endfunction
execute 'command! VoltPlugConf Gof -d' s:volt_plugconf()
```

You can use `:Gof` as file fuzzy finder.
This just invokes `gof` like above screen captures.

## Requirements

* Vim 8.2 or higher
* [gof](https://github.com/mattn/gof)
* [peco](https://github.com/peco/peco)

## `project_guide#define_command({cmdname} (string), {dirs_pattern_func} (string or function) [, {options} = {}])`

This example generates some functions for `:Gopath` command.

```vim
function! s:gopath_dirs_pattern() abort
  let root_dir = exists('$GOPATH') ? expand('$GOPATH') : expand('$HOME/go')
  let dirs_pattern = root_dir .. '/src/*/*/*'
  return dirs_pattern
endfunction
call project_guide#define_command('Gopath', function('s:gopath_dirs_pattern'))
```

You can:

* Specify initial query to peco (`:Gopath myproject`)
* Complete Ex command arguments (`:Gopath <Tab>` or `:Gopath myproj<Tab>`)

## Plumbing functions

### `project_guide#open({dirs_pattern} [, {options}])`

1. Choose a project (UI is [peco](https://github.com/peco/peco))
2. `:tcd {project directory}`
3. Choose file(s) (UI is [gof](https://github.com/mattn/gof))
4. `:split {file(s)}`

```
{options} = {
  peco_args: <peco additional arguments (List)>,
  gof_args: <gof additional arguments (List)>,
}
```

Here is the example to use `{options}` (`peco_args`, `gof_args`).

```vim
command! -nargs=* -complete=dir Gopath call s:gopath(<q-args>)
function! s:gopath(query) abort
  let root_dir = exists('$GOPATH') ? expand('$GOPATH') : expand('$HOME/go')
  call project_guide#open(root_dir .. '/src/*/*/*', #{
  \ peco_args: a:query !=# '' ? ['--query', a:query] : [],
  \})
endfunction
```

Now you can specify initial query to peco (`:Gopath myproject`).

And more, if you also want to complete Ex command arguments, you can use
`project_guide#complete()`.

#### All available options

| Key                      | Type                                    | Description                                                                                                                                           |
|--------------------------|-----------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| `peco_args`              | List<String>                            | Addtional arguments to peco (default: `[]`)                                                                                                           |
| `gof_args`               | List<String>                            | Addtional arguments to gof (default: `[]`)                                                                                                            |
| `file_dialog_msg`        | String                                  | `{what}` for `popup_dialog({what}, {options})`. Used for choosing file(s). if empty({what}) is true, does not show popup (default: `'Choose a file'`) |
| `file_dialog_options`    | Same as `{options}` of `popup_dialog()` | `{options}` for `popup_dialog({what}, {options})` (default: `#{time: 2000}`)                                                                          |
| `file_ui`                | String                                  | Use files + peco when value is `files+peco`. otherwise gof (default: `files+peco`)                                                                    |
| `project_dialog_msg`     | String                                  | same as `file_dialog_msg` but for choosing a project (default: `'Choose a project'`)                                                                  |
| `project_dialog_options` | Same as `{options}` of `popup_dialog()` | same as `file_dialog_options` but for choosing a project (default: `#{time: 2000}`)                                                                   |
| `open_func`              | Function                                | The function to open the list of file(s) given by arguments (default: `function('project_guide#default_open_func')`)                                  |
| `load_session`           | Boolean                                 | Load session file or not (default: `v:true`)                                                                                                          |
| `session_file`           | String                                  | Session file name (default: `'Session.vim'`)                                                                                                          |

### `project_guide#default_open_func(path_list, opencmd = 'split')`

The default open function to open files in Vim after choosing file(s) by gof.

```vim
function! project_guide#default_open_func(path_list, opencmd = 'split') abort
  for path in a:path_list
    execute a:opencmd path
  endfor
endfunction
```

You can specify custom `open_func` to  `project_guide#define_command()` or `project_guide#open()` like this.

```vim
autocmd VimEnter * call project_guide#define_command('Gopath', function('s:gopath_dirs_pattern'), #{open_func: function('s:my_open_func')})
function! s:my_open_func(path_list) abort
  call project_guide#default_open_func(a:path_list, 'vsplit')
endfunction
```

NOTE: You cannot specify lambda to `open_func` !!!  Because `string()` is used internally.

### `project_guide#complete({dirs_pattern}, {arglead}, {cmdline}, {pos})`

You can create custom completion function using this.
Here is the example to do the same thing as `project_guide#define_command()`'s
example (this is simplified code. see `project_guide#define_command()` for
details if you are interested).

```vim
command! -nargs=* -complete=customlist,s:complete Gopath call s:gopath(<q-args>)

function! s:gopath(query) abort
  call project_guide#open(s:gopath_dirs_pattern(), #{
  \ peco_args: a:query !=# '' ? ['--query', a:query] : [],
  \})
endfunction

function! s:complete(...) abort
  return call('project_guide#complete', [s:gopath_dirs_pattern()] + a:000)
endfunction

function! s:gopath_dirs_pattern() abort
  let root_dir = exists('$GOPATH') ? expand('$GOPATH') : expand('$HOME/go')
  let dirs_pattern = root_dir .. '/src/*/*/*'
  return dirs_pattern
endfunction
```
