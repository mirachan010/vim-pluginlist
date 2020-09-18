Features:

- Call `:Autolinkbuffer` to enable autolinker for the current buffer 
  or check the definitions of `g:autolinker_filetypes` and 
  `g:autolinker_patterns`.
- Jump to files in the current directory
- Jump to files in 'path'
- Jump to tags
- Jump to file URLs
- Jump to line numbers (syntax: filename#123 where '123' is the line 
  number)
- Jump to the first occurrence of a string (syntax: 
  filename#q=STRING)
- Invoke URLs
- Highlight potential hyperlinks (doesn't work with all filetypes)
- Use a fallback command (e.g. create inexistent files)
- Special support for markdown (incl. link maps), viki files
- file URLs (an encoded URL starting with "file://") can be used to 
  circumvent encoding issues etc.

The default map is `gz` in normal and visual mode (see `g:autolinker#nmap` and 
`g:autolinker#xmap`). In insert mode, it is \<c-cr> if the key is yet unmapped 
(see `g:autolinker#imap`).

Differences to `gf`:

- Customizable & extensible
- Supports several methods
- Highlight some potential hyperlinks if possible
- When there are multiple potential matches, users can select the right 
  file from a list


-----------------------------------------------------------------------

# Install

Either use the zip archive:

- Download the zip archive
- Extract it to `~/.vim/pack/tml/start/autolinker`

or install from github:

- Start a terminal
- Change the working directory to `~/.vim/pack/tml/start/`
- Type: `git clone https://github.com/tomtom/autolinker_vim`

NOTE: On Windows, ~/.vim might be ~/vimfiles. Please see 'runtimepath' 
for details.

This script requires tlib ([vimscript #1863](http://www.vim.org/scripts/script.php?script_id=1863)) to be installed -- see 
https://github.com/tomtom/tlib_vim.



Dependencies:
<dl>
<dt>tlib (>= 1.21)</dt><dd>http://github.com/tomtom/tlib_vim</dd>
</dl>

License: GPLv3 or later


