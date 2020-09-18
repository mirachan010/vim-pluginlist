The long-term goal of this plugin is to provide notebook-like interaction with 
interpreted languages similar to Mathematica or Jupyter (within the limits 
of a text editor like vim).

# Features

- Run an interpreter as an inferior process.
- Send code to this process (asynchronously without blocking vim).
- Insert (or dynamically update) the results into the source code (as 
  commented out block below the respective source code). See also 
  `g:workbook#insert_results_in_buffer`.
- Transcribe the interaction with the interpreter.
- Provide code completion (see 'omnifunc') for some filetypes.

# How to use this plugin

- Open a file with a supported filetype (see below or 
  `workbook#GetSupportedFiletypes()`).
- Type `:Workbook` or add the filetype to `g:workbook_autosetup_filetypes` to 
  automatically enable the workbook mode for the specified filetypes.
- Press \<c-cr> to evaluate the current paragraph.
- Press \<localleader>w\<F1> for help on other commands and maps -- see also 
  `workbook#SetupBuffer()`.

# The following filetypes are supported well

- R (supports code completion)
- Rmd (same as R)

Experimental/basic support is provided for:

- fsharp
- javascript
- python
- ruby
- scala
- sh (default: bash)
- vim

Currenty, the main use case is to interact with R. Other than other 
well-known R-related vim plugins, the workbook plugin has no non-vim 
dependencies and works at least on Linux and Windows with no problems.

# Demo

![demo video](https://dl.dropboxusercontent.com/s/xj3nvbxnu6omocg/workbook_vim.gif?dl=0)]


-----------------------------------------------------------------------

# Install

Either use the zip archive:

- Download the zip archive
- Extract it to ~/.vim/pack/tml/start/workbook

or install from github:

- Start a terminal
- Change the working directory to ~/.vim/pack/tml/start/
- Type: git clone https://github.com/tomtom/workbook_vim

NOTE: On Windows, ~/.vim might be ~/vimfiles. Please see 'runtimepath' for 
details.


# Requirements

This script requires tlib ([vimscript #1863](http://www.vim.org/scripts/script.php?script_id=1863)) to be installed -- see 
https://github.com/tomtom/tlib_vim.




Dependencies:
<dl>
<dt>tlib (>= 1.22)</dt><dd>http://github.com/tomtom/tlib_vim</dd>
</dl>

License: GPLv3 or later


