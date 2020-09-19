# Transaction-Level Verilog support for Vim

The *vim-tlv-mode* plug-in adds support for Transaction-Level Verilog (TLV for
short) to the [Vim text editor] [vim]. The plug-in is intended to provide
everything needed to efficiently develop TLV code in Vim:

 * File type detection
 * Syntax highlighting (including an optional color scheme)
 * Automatic (smart) indentation
 * Automatic text folding
 * Checking for syntax errors (work in progress)

Each of the features outlined above is discussed in more detail below.

*Please note that Transaction-Level Verilog is in the process of being launched
as this document is written so I can't provide any public references yet, but
stay tuned: As soon as TLV has been launched I will provide references here.*

## Install & first use

Please refer to the [installation instructions] [howto-install] available on
GitHub. Once you've installed the plug-in try it out: Edit a `*.tlv` file and
inspect the syntax highlighting in `\TLV` code blocks! You can also play around
with the smart indentation to get a feel for how it works.

## Features

### File type detection

Transaction-Level Verilog files are detected in two complementary ways:

1. Files with the `*.tlv` filename extension;
2. Files whose first line consists of the mandatory file format line.

If either of the two conditions above is met the file type detection kicks in.
What this basically means is that you should never have to manually activate
the file type or syntax highlighting; it will be done for you automatically.

### Syntax highlighting

The syntax highlighting mode differentiates between three types of code regions:

1. The first type of region is marked at its start with the line `\SV`, these
   regions contain lines of [SystemVerilog] [sv] code that are passed through
   (unprocessed and uninterpreted) to the translated SystemVerilog file. These
   regions are highlighted using Vim's [SystemVerilog syntax highlighting
   support] [sv_syntax] (included in Vim's runtime distribution as the
   `systemverilog` file type).

2. The second type of region is marked at its start with the line `\TLV`, these
   regions contain lines of Transaction-Level Verilog code. **This is where the
   syntax highlighting for Transaction-Level Verilog code kicks in and where
   most of the syntax highlighting logic of *vim-tlv-mode* is concentrated.**

3. The third type of region is marked at its start with the line `\SV_plus`,
   these regions contain lines of SystemVerilog code with TLV signal
   references.

#### Syntax highlighting of M4 macros

The TLV processing chain runs [M4] [m4] as an independent preprocessor before
any other processing takes place so M4 macros can be used anywhere (although
they are intended to provide functionality for `\TLV` and `\SV_plus` regions).
Because of this the *vim-tlv-mode* syntax script uses Vim's [M4 syntax
highlighting support] [m4_syntax] to highlight M4 macros embedded in TLV files.

#### Recommended color scheme included

There is a recommended color scheme for editing Transaction-Level Verilog code
and *vim-tlv-mode* contains a Vim color scheme script called (you guessed it
:-) *tlv* that provides this recommended color scheme to Vim. Of course you're
free to decide whether to use this color scheme or not, the choice is up to
you. The syntax highlighting mode is intended to work well with other Vim color
schemes as well.

The color scheme was created with [graphical Vim] [gvim] in mind because the
recommended colors are not available in terminal Vim (because terminal Vim is
limited to a fixed palette with a maximum of 256 colors). I may try to make the
color scheme compatible with terminal Vim as well, but I'm not yet sure how
well that will work.

To try out the color scheme you can use the following command:

    :colorscheme tlv

If you like the color scheme you can add the command above to your [vimrc
script] [vimrc] to make the choice permanent.

### Automatic (smart) indentation

The *vim-tlv-mode* plug-in uses Vim's ['indentexpr'] [indentexpr] option to
implement smart indentation (that understands TLV scope rules and knows to
ignore line type characters) and automatically increases the indentation level
as needed.

### Automatic text folding

The *vim-tlv-mode* plug-in uses Vim's ['foldexpr'] [foldexpr] option to
implement automatic text folding (that understands TLV scope rules and knows to
ignore line type characters). This method of text folding is already a big
improvement over indentation based folding (because that falls apart as soon as
line type characters are introduced) but it's not perfect yet; I'd like to
improve it further.

### Checking for syntax errors

To compile TLV code you need the `sandpiper` compiler. When the *vim-tlv-mode*
plug-in sees that you have the `sandpiper` compiler installed it will
automatically run the compiler every time you save a TLV file. If the compiler
reports syntax warnings or errors a [location-list-window] [llw] pops up to
show you an overview of compiler messages. When you click on a line in the
location list window you'll automatically jump to the line in the TLV file
where the message was reported.

#### Setting it up

To get the automatic syntax checking working you need to have the `sandpiper`
compiler installed on your `$PATH`. To set this up you create a symbolic link
from a directory in your `$PATH` to the `bin/sandpiper` executable in the TLV
compiler distribution (which also contains an `m4` directory next to the `bin`
directory). In order to use the TLV compiler the *vim-tlv-mode* plug-in needs
to use the command line option `-m4inc` with the absolute pathname of the `m4`
directory. The symbolic link is used by the *vim-tlv-mode* plug-in to find the
pathname of the `m4` directory inside the TLV compiler distribution.

#### Status of this feature

_Please note that this feature is still in development (not finished yet)._ It
is working quite well already for plain TLV files but it needs more work for
TLV files that involve significant M4 preprocessing (this breaks the file names
and line numbers and I'm not yet sure how to match them up afterwards).

## Contact

If you have questions, bug reports, suggestions, etc. the author can be
contacted at <peter@peterodding.com>. The latest version is available at
[peterodding.com/code/vim/tlv-mode] [homepage] and
[github.com/xolox/vim-tlv-mode] [github-tlv-mode]. If you like the plug-in
please vote for it on [Vim Online] [vim-online].

## License

This software is licensed under the [MIT license] [mit].  
© 2015 Peter Odding &lt;<peter@peterodding.com>&gt;.


[foldexpr]: http://vimdoc.sourceforge.net/htmldoc/options.html#'foldexpr'
[github-tlv-mode]: https://github.com/xolox/vim-tlv-mode
[gvim]: http://vimdoc.sourceforge.net/htmldoc/gui.html#gui
[homepage]: http://peterodding.com/code/vim/tlv-mode/
[howto-install]: https://github.com/xolox/vim-tlv-mode/blob/master/INSTALL.md
[indentexpr]: http://vimdoc.sourceforge.net/htmldoc/options.html#'indentexpr'
[llw]: http://vimdoc.sourceforge.net/htmldoc/quickfix.html#location-list-window
[m4]: http://en.wikipedia.org/wiki/M4_(computer_language)
[m4_syntax]: https://code.google.com/p/vim/source/browse/runtime/syntax/m4.vim
[mit]: http://en.wikipedia.org/wiki/MIT_License
[sv]: http://en.wikipedia.org/wiki/SystemVerilog
[sv_syntax]: https://code.google.com/p/vim/source/browse/runtime/syntax/systemverilog.vim
[vim-online]: http://www.vim.org/scripts/script.php?script_id=5130
[vim]: http://www.vim.org/
[vimrc]: http://vimdoc.sourceforge.net/htmldoc/starting.html#vimrc
