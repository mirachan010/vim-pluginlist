![](https://skywind3000.github.io/images/p/asynctasks/icon-3.png)

# asynctasks.vim - modern task system

The generic way to handle building/running/testing/deploying tasks by imitating vscode's [task system](https://code.visualstudio.com/docs/editor/tasks).

[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE) [![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity) [![Join the chat at https://gitter.im/skywind3000/asynctasks.vim](https://badges.gitter.im/skywind3000/asynctasks.vim.svg)](https://gitter.im/skywind3000/asynctasks.vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

<!-- TOC -->

- [Introduction](#introduction)
- [Get Started](#get-started)
    - [Installation](#installation)
    - [Build and run a single file](#build-and-run-a-single-file)
    - [Build and run a project](#build-and-run-a-project)
    - [Task priority](#task-priority)
    - [Query available tasks](#query-available-tasks)
    - [Macro variable substitution](#macro-variable-substitution)
    - [Task running modes](#task-running-modes)
    - [Run in an external terminal](#run-in-an-external-terminal)
- [Advanced Topics](#advanced-topics)
    - [Ask for user input](#ask-for-user-input)
    - [Task with different profiles](#task-with-different-profiles)
    - [Different system with different commands](#different-system-with-different-commands)
    - [Data source for fuzzy finders](#data-source-for-fuzzy-finders)
    - [Customize runners](#customize-runners)
    - [Options](#options)
- [Task Examples](#task-examples)
- [Command Line Tool](#command-line-tool)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Credit](#credit)

<!-- /TOC -->

This readme is also available in:

- 【[Chinese | 中文文档](README-cn.md)】

## Introduction

As vim 8.0 released in 2017, we have got many wonderful plugins like: LSP, DAP and asynchronous linters. Even things like [vimspector](https://github.com/puremourning/vimspector) which could only been imagined in emacs in the past, now become reality in vim.

However, vim is still lack of an elegent task system to speed up your inner software development cycle (edit, compile, test). A lot of people are still dealing with those building, testing and deploying tasks in such a primitive or flaky way. Therefor, I decide to create this plugin and introduce vscode's task like machanisms to vim. 

Vscode creates a `.vscode` folder in your project root directory and use a `.vscode/tasks.json` file to define project specific tasks. Similar, `asynctasks.vim` uses a `.tasks` file in your project folders for local tasks and use `~/.vim/tasks.ini` to define global tasks for generic projects.

This is very simple, but most good designs always start from a very simple concept. You will benefit a lot from the productivity and possibility of this task system.

## Get Started

### Installation

Install with `vim-plug`:

```VimL
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
```

It requires [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim) 2.4.0 or above. Don't forget to setup:

```VimL
let g:asyncrun_open = 6
```

And quickfix window can be opened automatically, otherwise you can't see the task output unless using `:copen` manually.

### Build and run a single file

It's convenient for me to build and run a single file directly without creating a new project for that if I want to try some small and new ideas. In this circumstance, we can use `:AsyncTaskEdit` command to edit the `.tasks` configuration file in your current project root directory:

```ini
[file-build]
# macros in the "$(...)" form will be substituted, 
# shell command, use quotation for filenames containing spaces
command=gcc -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)"
# working directory
cwd=$(VIM_FILEDIR)

[file-run]
command="$(VIM_FILEDIR)/$(VIM_FILENOEXT)"
cwd=$(VIM_FILEDIR)
# output mode: run in a terminal
output=terminal
```

There are two tasks `file-build` and `file-run` defined in this `.tasks` file. Then from the directory where this `.tasks` reside and its child directories, you can use:

```VimL
:AsyncTask file-build
:AsyncTask file-run
```

To build and run the current file:

![](https://skywind3000.github.io/images/p/asynctasks/demo-1.png)

This is the result of `:AsyncTask file-build`, the command output displays in the quickfix window and errors are matched with `errorformat`. You can navigate the command output in the quickfix window or use `:cnext`/`:cprev` to jump between errors.

There are many macros can be used in the command field and will be expanded and replaced when task starts. Having a fast, low-friction Edit/Build/Test cycle is one of the best and easiest ways to increase developer productivity, so we will map them to F5 and F9:

```VimL
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f9> :AsyncTask file-build<cr>
```

Put the code above in your `vimrc` and you can have F9 to compile current file and F5 to run it. And you may ask, this is for C/C++ only, what if you want to run a python script, should you create a new task `file-run-python` ? Totally unnecessary, commands can match with file types:

```ini
[file-run]
command="$(VIM_FILEPATH)"
command:c,cpp="$(VIM_PATHNOEXT)"
command:go="$(VIM_PATHNOEXT)"
command:python=python "$(VIM_FILENAME)"
command:javascript=node "$(VIM_FILENAME)"
command:sh=sh "$(VIM_FILENAME)"
command:lua=lua "$(VIM_FILENAME)"
command:perl=perl "$(VIM_FILENAME)"
command:ruby=ruby "$(VIM_FILENAME)"
output=terminal
cwd=$(VIM_FILEDIR)
save=2
```

The `command` followed by a colon accepts file type list separated by comma. If the current file type cannot be matched, the default command will be used. The `-save=2` represents to save all modified buffers before running the task.

At this point, you can have your `F5` to run all type of files. And plugins like quickrun can be obsoleted immediately, they can't do better than this. Then we continue to polish `file-build` to support more file types:

```ini
[file-build]
command:c,cpp=gcc -O2 -Wall "$(VIM_FILEPATH)" -o "$(VIM_PATHNOEXT)" -lstdc++ -lm -msse3
command:go=go build -o "$(VIM_PATHNOEXT)" "$(VIM_FILEPATH)"
command:make=make -f "$(VIM_FILEPATH)"
output=quickfix
cwd=$(VIM_FILEDIR)
save=2
```

Again, F9 can be used to compile many file types, same keybind, different command. This two tasks can be defined in local `.tasks` and work for the project scope or in the `~/.vim/tasks.ini` and work for all project. Much more elegant than using the old `&makeprg` or calling `asyncrun`/`neomake` with a lot `if`/`else` in your `vimrc`.

Tasks for running compilers or grep may set `output=quickfix` (default), because the output can use errorformat to match errors in the quickfix window, while tasks for running your file/project may set `output=terminal`.

When you set `output` to `terminal`, you can further specify what type of terminal do you want to use exactly, like: a simulated terminal in quickfix window (without matching the errorformat)? the triditional `!` command in vim? the internal terminal ? an external terminal window ? or in a tmux split window ?? The detail will be discussed later.

### Build and run a project

If you want to do something with a project, you must figure out where the project locates. `asynctasks.vim` and its backend `asyncrun.vim` choose a widely used method called `root markers` to indentify the project root directory. The project root is one of the nearest parent directory containing these markers:

```VimL
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
```

If none of the parent directories contains these root markers, the directory of the current file is used as the project root. 

There is a corner case: if current buffer is not a normal file buffer (eg. a tool window) or is an unnamed new buffer, vim's current working directory (which `:pwd` returns) will be used as the project root.

Once we got the project location, the macro `$(VIM_ROOT)`, or its alias `<root>`, can be used to represent the project root:

What if your current project is not in any `git`/`subversion` repository ? How to find out where is my project root ? The solution is very simple, just put an empty `.root` file in your project root, it has been defined in `g:asyncrun_rootmarks` before.

Tasks related to projects can be defined by using this:

```ini
[project-build]
command=make
# set the working directory to the project root.
cwd=$(VIM_ROOT)

[project-run]
command=make run
# <root> is an alias to `$(VIM_ROOT)`, a little easier to type.
cwd=<root>
output=terminal
```

We assign F6 and F7 for them:

```VimL
noremap <silent><f6> :AsyncTask project-run<cr>
noremap <silent><f7> :AsyncTask project-build<cr>
```

Now, F7 can be used to build your project and F6 can be used run your project. You may ask again, this is for `gnu-make` only, but there are a lot of build tools like cmake, ninja and bazel, should you define new tasks as `project-build-cmake` or  `project-build-ninja` and assign different keymaps for them ?


### Task priority

No, you don't have to. The easiest way is to put previous `project-build` and `project-run` in your `~/.vim/tasks.ini` as the default and global tasks, you can use them directly for generic projects using `make`.

For other type of projects, for example, I am using `msbuild` in my project `A`. And I can define a new `project-build` task in the local `.tasks` file residing in project `A`:

```ini
[project-build]
command=vcvars32 > nul && msbuild build/StreamNet.vcxproj /property:Configuration=Debug /nologo /verbosity:quiet
cwd=<root>
errorformat=%f(%l):%m

[project-run]
command=build/Debug/StreamNet.exe
cwd=<root>
output=terminal
```

The `.tasks` configuration file are read top to bottom and the most recent tasks found take precedence. and local tasks always have higher priority than the global tasks. 

Task defined in `.tasks` will always override the task with the same name in `~/.vim/tasks.ini`. So, in project `A`, our two old friends `project-build` and `project-run` have been replaced with the local methods.

Firstly, the new `project-build` task will call `vcvars32.bat` to setup environment variables, then, use a `&&` to concatenate `msbuild` command. `errorformat` is initialized to `%f(%l):%m` for matching `Visual C++` errors in this task.

We can still use `F7` to build this project and `F6` to run it. We don't have to change our habit if we are working in a different type of project. Unified workflow can be used in different type of projects. This is the power of local/global tasks combination.

**Bonus**: use `:AsyncTaskEdit` to edit local tasks, and `:AsyncTaskEdit!` to edit global tasks.

### Query available tasks

What tasks do you have in current project ? Where are they defined ? Has one global task been overrided by a local one ? We use `:AsyncTaskList` command to answer these questions:

![](https://skywind3000.github.io/images/p/asynctasks/demo-list.png)

It will display task name, command and where it has been defined.

**Bonus**: tasks starting with a dot "." will be hidden (eg. ".file-test-temp1"), use `:AsyncTaskList!` to see them all.

### Macro variable substitution

`asynctasks.vim` supports macro variable substitution in `command` and `cwd` fileds, available macros are:

```bash
$(VIM_FILEPATH)    # File name of current buffer with full path.
$(VIM_FILENAME)    # File name of current buffer without path.
$(VIM_FILEDIR)     # Full path of current buffer without the file name.
$(VIM_FILEEXT)     # File extension of current buffer.
$(VIM_FILETYPE)    # File type (value of &ft in vim)
$(VIM_FILENOEXT)   # File name of current buffer without path and extension.
$(VIM_PATHNOEXT)   # Current file name with full path but without extension.
$(VIM_CWD)         # Current directory (which :pwd returns).
$(VIM_RELDIR)      # File path relativize to current directory.
$(VIM_RELNAME)     # File name relativize to current directory.
$(VIM_ROOT)        # Project root directory.
$(VIM_CWORD)       # Word under cursor.
$(VIM_CFILE)       # File name under cursor.
$(VIM_CLINE)       # Cursor line number in current buffer
$(VIM_GUI)         # has('gui_runnin')?
$(VIM_VERSION)     # Value of v:version.
$(VIM_COLUMNS)     # Current screen width.
$(VIM_LINES)       # Current screen height.
$(VIM_SVRNAME)     # Value of v:servername.
$(VIM_PRONAME)     # Name of current project root directory
$(VIM_DIRNAME)     # Name of current directory
$(VIM_INIFILE)     # Full path name of current ini (.tasks) file.
$(VIM_INIHOME)     # Where the ini file locates.
```

They will be expanded and replaced in the `command` and `cwd` fields. System environment variables with same names are also initialized as the same value. If one of your task has many complex shell commands, you can put the commands in a shell script and execute it in the task:

```ini
[project-build]
command=build/my-build-task.sh
cwd=<root>
```

In this case, you don't have to pass any argument to `my-build-task.sh`, because the shell script can read environment variable `$VIM_FILENAME` to access current file name. By utilizing system environment variables with external script file, you can describe many complex tasks in your project. And of course, much more powerful than defining some keymaps for `!` command in your `vimrc`.

There is a `:AsyncTaskMacro` command for you to display macro help:

![](https://skywind3000.github.io/images/p/asynctasks/demo-macro-3.png)

From left to right, is the macro name, what does it stand for and current value. You don't have to check the documentation when you are editing your task configuration.

### Task running modes

There is an `output` field in each task's configuration, it can be one of:

- `quickfix`: default mode, output to the quickfix window and match with `errorformat`.
- `terminal`: run in a terminal.

Nothing to talk about `output=quickfix`, and if you set `output` to `terminal` your can further specify the terminal type by setting:

```VimL
let g:asynctasks_term_pos = 'xxx'
```

to specify what terminal do you want to use, available options are:

| Name | Type | Description |
|-|-|-|
| `quickfix` | simulation | Default, simulate a terminal in quickfix window (output will not match the errorformat) |
| `vim` | - | Use the old `!` command to run your task, some people still like it |
| `tab` | internal terminal | open a new internal terminal in a new tab |
| `top` | internal terminal | open a reusable internal terminal above current window |
| `bottom` | internal terminal | open a reusable internal terminal under current window |
| `left` | internal terminal | open a reusable internal terminal on the left |
| `right` | internal terminal | open a reusable internal terminal on the right |
| `external` | external terminal | use a new system terminal to run your task |

You can set a `pos` field in a task to override global `g:asynctasks_term_pos` value in the given task.

Almost all the possible methods are here, choose your favorite one.

When `output` is `terminal`, and if you set:

```VimL
let g:asynctasks_term_pos = 'bottom'
```

Command `:AsyncTask file-run` will open an internal terminal under your current window:

![](https://skywind3000.github.io/images/p/asynctasks/demo-2.png)

If the previous terminal session has finished, the window will be resused. When you set `g:asynctasks_term_pos` to one of `top`, `bottom`, `left` and `right`, these two options below can allow you change the terminal size:

```VimL
let g:asynctasks_term_rows = 10    " set height for the horizontal terminal split
let g:asynctasks_term_cols = 80    " set width for vertical terminal split
```

If a terminal split window is too small for you, you can setup:

```VimL
let g:asynctasks_term_pos = 'tab'
```

A whole tab can be used to display the internal terminal:

![](https://skywind3000.github.io/images/p/asynctasks/demo-3.png)

Almost all the vim screen are occupied, is it big enough to fit your need ? This is my most favorite one. 

The default `quickfix` can also be used to run your task, but it is not capable to handle user input, and if your program will interact with user, you may choose a real terminal.

**Bonus**:

- tab terminal can also be reusable if you set `g:asynctasks_term_reuse` to `1`.
- you can prevent focus changing if you set `g:asynctasks_term_focus` to `0` (split terminals only).

(When you are using internal terminal, `asynctasks.vim` encourage you to setup `ALT+HJKL` to jump around windows and `ALT+q` to exit to terminal normal mode).

### Run in an external terminal

Many desktop developer using Visual Studio on Windows prefer to run their programs in a new cmd window, we can use `external` for this:

```VimL
let g:asynctasks_term_pos = 'external'
```

Then, every task with `output=terminal` will open a new `cmd` window:

![](https://skywind3000.github.io/images/p/asynctasks/demo-4.png)

Familiar feeling like you are working in Visual Studio.

`asynctasks.vim` provide you all the possible ways to run a command in vim with no compromise. Choose one you like.


## Advanced Topics

Continue hacking in `asynctasks.vim`:

### Ask for user input

Some tasks, eg finding strings in current project, may need to ask user to input some keywords before start.

If `command` field contains macros in `$(?...)` form, when you run `:AsyncTask xxx`, you are required to input something in the vim:

```ini
[task1]
command=echo hello $(?your name), you are a $(gender).
output=terminal
```

When `:AsyncTask task1` happens, you can input values in the prompt area:

![](https://skywind3000.github.io/images/p/asynctasks/input-ask.png)

There are two variable you need to provide, input them one by one, press `ESC` to give up and `ENTER` to confirm. The task will start when you finished:

![](https://skywind3000.github.io/images/p/asynctasks/input-display.png)

As you see, `$(?your name)` has been substituted with the value you just provided.

_Hint: use `$(?prompt:default)` to provide a default value, and `$(?prompt:)` to remember input history._

Real example used by myself:

```ini
[grep]
command=rg -n --no-heading --color never "$(?keyword)" "<root>" -tcpp -tc -tpy -tvim -tgo -tasm
cwd=$(VIM_ROOT)
errorformat=%f:%l:%m
```

Here is my global `grep` task. Each time I use `:AsyncTask grep` in any of my project, it prompts me to input `keyword` before searching, I can use `<C-r><C-w>` to pickup word under cursor or input something new.

If I need other filetypes to search in certain project, I can redifine a new `grep` with different parameters for this project.

But most of time, a global `grep` task is enough, rg supports `.ignore` files for different files, I can use them to prevent searching in unnecessary files. Check rg documentation for `--ignore-file`.

### Task with different profiles

One task can have many different `profiles`:

```ini
[task1:release]
command=gcc -O2 "$(VIM_FILEPATH)" -o "$(VIM_PATHNOEXT)"
cwd=$(VIM_FILEDIR)

[task1:debug]
command=gcc -g "$(VIM_FILEPATH)" -o "$(VIM_PATHNOEXT)"
cwd=$(VIM_FILEDIR)
```

Here we have `task1` with two different profiles `release` and `debug`. The default profile is `debug`, change it to `release` by:

```VimL
:AsyncTaskProfile release
```

or

```VimL
let g:asynctasks_profile = 'release'
```

Then, `:AsyncTask task1` will run `tasks1` with profile `release`.

### Different system with different commands

This plugin can select command for given system:

```ini
[task1]
command=echo default
command/win32=echo win32 default
command/linux=echo linux default
command:c,cpp/win32=echo c/c++ for win32
command:c,cpp/linux=echo c/c++ for linux
```

Both `filetype` and `system` can be used as filter. Default command (the first one) will be chosen if mismatch.

Change this option to specify your system:

```VimL
let g:asynctasks_system = 'macos'
```

Then command ending with `/macos` will be selected.

### Data source for fuzzy finders

A fuzzy finder can help you pick a task easily:

![](https://skywind3000.github.io/images/p/asynctasks/fuzzy.png)

This plugin have some apis to fetch task information, which makes integration very easy:

```VimL
let current_tasks = asynctasks#list("")
```

It returns a list of items, each item represents a task. And it can be used as the data source for fuzzy finders like `fzf.vim` or `Leaderf`.

Here is a [instruction](https://github.com/skywind3000/asynctasks.vim/wiki/UI-Integration) to integrate with `fzf`, `leaderf` and `coc-list`.

### Customize runners

For customizing additional runners, or to run task in `tmux` pane and `gnome-terminal` tab/window, please visit [customize runners](https://github.com/skywind3000/asynctasks.vim/wiki/Customize-Runner).

### Options

##### The `g:asynctasks_config_name` option

Don't like the `.tasks` file name ? Rename it as you want:

```VimL
let g:asynctasks_config_name = '.asynctask'
let g:asynctasks_config_name = '.git/tasks.ini'
```

##### The `g:asynctasks_rtp_config` option

Don't like the global `tasks.ini` file name in your `~/.vim` ? Change it to:

```VimL
let g:asynctasks_rtp_config = "asynctasks.ini"
```

##### The `g:asynctasks_extra_config` option

A list of additional global task configuration files, you can indicate other global configurations:

```VimL
let g:asynctasks_extra_config = [
    \ '~/github/my_dotfiles/my_tasks.ini',
    \ '~/.config/tasks/local_tasks.ini',
    \ ]
```

Then, these two additional globla configurations will be loaded after reading `~/.vim/tasks.ini`.

##### The `g:asynctasks_term_pos` option

What terminal do you want to run your task. see [Task running modes](#task-running-modes).

##### The `g:asynctasks_term_cols` option

Internal terminal width when using vertical split.

##### The `g:asynctasks_term_rows` option

Internal terminal height when using horizontal split.

##### The `g:asynctasks_term_focus` option

Set to zero to keep focus when using an internal terminal in a new split.

##### The `g:asynctasks_term_reuse` option

Set to `1` to reuse internal terminal when open it in a new tab.

##### The `g:asynctasks_term_hidden` option

If it is set to `1`, the internal terminal buffers will set `bufhidden` to `hide`.

##### The `g:asynctasks_term_listed` option

Set to zero to hide terminal buffer from buffer list (`set nolisted`).

##### The `g:asynctasks_confirm` option

Set to zero to skip filename confirmation in `:AsyncTaskEdit`.

##### The `g:asynctasks_template` option

Command `:AsyncTaskEdit` accept a template name, the content of template will be used if you are creating a new task config file:

```VimL
let g:asynctasks_template = {}
let g:asynctasks_template.cargo = [
			\ "[project-init]",
			\ "command=cargo update",
			\ "cwd=<root>",
			\ "",
			\ "[project-build]",
			\ "command=cargo build",
			\ "cwd=<root>",
			\ "errorformat=%. %#--> %f:%l:%c",
			\ "",
			\ "[project-run]",
			\ "command=cargo run",
			\ "cwd=<root>",
			\ "output=terminal",
			\ ]
```

Command:

    :AsyncTaskEdit cargo

Will create a new file with the template "cargo", if the file doesn't exist.

## Task Examples

There are many examples about: cmake, grep, ninja, wsl and more:

- [Task Examples](https://github.com/skywind3000/asynctasks.vim/wiki/Task-Examples)

## Command Line Tool

This plugin provides you an `asynctask.py` script (in the `bin` folder) when you want to run tasks right in your shell:

```bash

# run tasks in any child directory of your project 
# no need to go back to project root directory, because "cwd=<root>".
$ asynctask project-build

# compile a file
$ asynctask file-build hello.c

# run a file
$ asynctask file-run hello.c
```

Use `fzf` to select task:

![](https://skywind3000.github.io/images/p/asynctasks/commandline.gif)

For more information, please visit:

- [Command Line Tool](https://github.com/skywind3000/asynctasks.vim/wiki/Command-Line-Tool).

## Frequently Asked Questions

See the:

- [FAQ](https://github.com/skywind3000/asynctasks.vim/wiki/FAQ)

## Credit

Like `asynctasks.vim` ? Star this repository on [GitHub](https://github.com/skywind3000/asynctasks.vim), this is really helpful. And if you're feeling especially charitable, follow skywind3000 on [Twitter](https://twitter.com/skywind3000) and [GitHub](https://github.com/skywind3000).





