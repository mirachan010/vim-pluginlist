### Motivation

This plugin will automatically fold long preambles, such as GPL copyright
notices, located at the head of source files.  You may find it helpful if,
like me, you use syntax folding infrequently.

Very often, I read third-party library sources and examples, such as Nokia's
Qt library, various GNU utilities, and many others.  I want to see the
functions and read the comments but not the 50 lines of licensing and
copyright notices that head every file. Because these are third-party
sources, I do not want to modify the files to include Vim fold markers.

### What it does

This plugin does not use fold markers and does not modify files.
It adds the fold by changing the foldmethod to "manual" and inserting a
manual fold.

If the foldmethod is 'syntax', the plugin will do nothing except try to
close the fold on line 1, if one exists.  No fold is created and the
foldmethod is not changed.

The preamble has to start at the top of the file, but may be preceded by
empty lines.  It will consist of leading blank lines followed by lines
with comments starting in column one. The preamble will stop at the first line
not having a comment in the first column.

Note: If the preamble uses 'c' style comments without a border of characters
in column 1 the preamble will not be recognized.

### Usage

For automatic folding, add a line to your .vimrc file, such as:

```vim
call Preamble#Enable('c,cpp,csharp,python')
```

For more info on usage and options, use:

```vim
:help preamble
```
