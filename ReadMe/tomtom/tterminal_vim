The `:Tterminal` command facilitates evaluating code in a terminal.

- It start the right command (defined via run configurations aka "runconfigs") 
  for the current filetype
- It installs a map (\<c-cr>) that sends the current line or selection to the 
  terminal
- For certain filetypes (e.g. R) it also supports omnicompletion (see 
  'omnifunc') via \<c-x>\<c-o>
  NOTE: The terminal must be visible for this to work since this relies on 
  `terminal-api`.
- All buffers with the same runconfig and the same working directory (usually 
  all buffers of a project with the same 'filetype') share the same terminal

Examples: >

    " Run a terminal with the default command for the current filetype.
    " If no runconfig is defined for the current filetype, open 'shell'.
    :Tterminal

    " Run a terminal with a custom runconfig (e.g. a command with special 
    " command-line arguments)
    :Tterminal r-nosave

    " Run a terminal with custom command (if the name is no pre-configured 
    " runconfig)
    :Tterminal my-r-wrapper.sh

General maps:

\<c-cr> ... Send the current line or selection to the terminal

For additional maps per filetype please see:

R -> `tterminal#runconfig#r#SetupBuffer()`


-----------------------------------------------------------------------

# Install

Either use the zip archive:

- Download the zip archive
- Extract it to `~/.vim/pack/tml/start/tterminal_vim`

or install from github:

- Start a terminal
- Change the working directory to `~/.vim/pack/tml/start/`
- Type: `git clone https://github.com/tomtom/tterminal_vim`

or use a VIM plugin manager like vim-plug, vundle, dein.vim, VAM etc.

NOTE: On Windows, ~/.vim might be ~/vimfiles. Please see 'runtimepath' 
for details.

Some features require the tlib_vim plugin to be installed:
https://github.com/tomtom/tlib_vim

Also available via git: http://github.com/tomtom/tterminal_vim


# Setup

Please configure the plugin via the following parameters:

- `g:tterminal_autoenable_filetypes`
- `g:tterminal#runconfigs`
- `g:tterminal#cmd_map`





License: GPLv3 or later


