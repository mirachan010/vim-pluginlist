VIM 8.0 introduced a new way to handle (optional) plugins via the 
`:packload` command. This plugin aims at facilitating the handling of 
optional packs by loading packs when certain triggers are invoked. The 
goal of this approach is to reduce startup time without interferring 
with your workflow.

A trigger could be

- Invocation of a command (see `:Autocommand`)
- Invocation of a map (see `:Automap`)
- Editing a file with a specific filetype (see `:Autofiletype`)
- Editing a file matching a specific file pattern (see 
  `:Autofilepattern`)

# How to use this plugin

- Edit ~/.vim/packrc/autorc.vim
- Add autopack commands (`:Autocommand`, `:Automap`, `:Autofiletype`, 
  `:Autofilepattern`) as needed
- Optionally, run `:Automakeprelude` in order to collect `filetype-detect` 
  information from optional plugins. This will be loaded on startup.
- Optionally, configure (optional) plugins in packs (i.e. plugins in 
  `pack/PACK/opt/PLUGIN`) via `packrc/before/PLUGIN.vim` and 
  `packrc/after/PLUGIN.vim` scripts)
- "Filetype packs", i.e. packs matching `pack/ft_{FILETYPE}/opt/*` in 
  you 'runtimepath' are automatically enabled when editing a file with 
  the respective filetype
- Restart vim

Example `autorc.vim` file >

    Automap ttoc_vim nnoremap \<Leader>cc :TToC\<cr>
    Autocommand trag_vim Trag
    Autofiletype workbook_vim r
    Autofilepattern ttodo_vim *todo.txt *TODO.TXT


-----------------------------------------------------------------------

# Install

Either use the zip archive:

- Download the zip archive
- Extract it to `~/.vim/pack/tml/start/autopack`

or install from github:

- Start a terminal
- Change the working directory to `~/.vim/pack/tml/start/`
- Type: `git clone https://github.com/tomtom/autopack_vim`

NOTE: On Windows, ~/.vim might be ~/vimfiles. Please see 'runtimepath' 
for details.

NOTE: If you want to have autopack-related commands available in your VIMRC 
file or if you want to load packrc configuration files for packs in a 
`start` subdirectory, you should move the plugin directory to 
`pack/tml/opt/autopack_vim` instead and add `:packadd autopack_vim` to 
your vimrc file.




Dependencies:
<dl>
<dt>tlib (optional)</dt><dd>http://github.com/tomtom/tlib_vim</dd>
</dl>

License: GPLv3 or later


