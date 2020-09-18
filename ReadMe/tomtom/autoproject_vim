In most IDEs users have to manually set up a list of projects. The goal of this 
plugin is to semi-automatically maintain such a list of projects and corresponding 
sessions.

Projects are defined by their root directory. A project directory is detected 
when creating a buffer or reading a file into a buffer by searching for certain 
files that typically define a project, like Makefile, setup.py etc. -- see 
`g:autoproject#cd#markers` for a full list. If no such a marker is found, the 
buffer's directory is used.

If the detection of the project's root directory goes wrong, users can use 
`:Autoprojectregister` to define a directory as a root directory. Such custom 
root directories will be reused when opening the respective file again.

After the working directory is determined, it checks whether there is a file 
`project.vim` or `.autoproject/buffer.vim` (see also 
`g:autoproject#projectrc#buffer_conig`). If the file exists, it gets loaded. This 
file typically sets project-related settings and variables, i.e., you have to 
use `:setlocal` (instead of :set) and use buffer-local `b:` variables.

The autoproject plugin keeps track of projects so that you can switch back to a 
project later on (see `:Autoprojectselect`). It also provides support for 
creating sessions (see `:Autoprojectmksession`) that will automatically be 
loaded when entering the respective project.

# Features:

- Detect a file's project root directory (see `g:autoproject#cd#markers`).
- Load a project-specific vim configuration file (see 
  `g:autoproject#projectrc#buffer_conig`).
- Maintain a list of projects (i.e. project root directories). Use 
  `:Autoprojectregister` to register an arbitrary directory. Use 
  `:Autoprojectselect` to quickly open a file in a previously opened project. 
  When a project is selected this way, the file `.autoproject/global.vim` (see 
  `g:autoproject#projectrc#global_config`) is loaded if it exists.
- Maintain project-specific sessions that were created with 
  `:Autoprojectmksession` (see also `g:autoproject_enable_sessions` and 
  `:Autoprojectleavesession`).

# How to use this plugin:

- Load a file ... done
    - Report wrongly detected project directories to the plugin author
- Use `:Autoprojectselect` to switch to a project.
- Optionally, use `:Autoprojectmksession` to create a session for the current 
  project. Don't forget to use `:Autoprojectleavesession` to save changes to 
  the session file when you're done.


-----------------------------------------------------------------------

# Install

Either use the zip archive:

- Download the zip archive
- Extract it to `~/.vim/pack/tml/start/autoproject`

or install from github:

- Start a terminal
- Change the working directory to `~/.vim/pack/tml/start/`
- Type: `git clone https://github.com/tomtom/autoproject_vim`

NOTE: If you don't want to run this plugin on startup, use 
`~/.vim/pack/tml/opt/`.

NOTE: On Windows, ~/.vim might be ~/vimfiles. Please see 'runtimepath' for 
details.


# Requirements

This script requires tlib ([vimscript #1863](http://www.vim.org/scripts/script.php?script_id=1863)) to be installed -- see 
https://github.com/tomtom/tlib_vim.



Dependencies:
<dl>
<dt>tlib (>= 1.24)</dt><dd>http://github.com/tomtom/tlib_vim</dd>
</dl>

License: GPLv3 or later


