Vim Excess Lines
================

This is kind of a frontend to the the `matchadd()` mechanism in Vim with
the focus on one particular use case: Highlighting surplus characters
in long lines.

The configuration is a bit involved, but in return you can specify what you want
to see when and where.  Actually, you can use it to highlight anything.  Not
just excess lines.

**Features:**

- Configure different highlighting for buffers of different filetype
- Match different patterns during insert and normal mode
- Turn highlighting on/off or toggle it
- Select in which filetypes to start in on/off mode
- Start in off mode when the buffer is not modifiable, has the `wrap` option
  set, or has a particular buffer-type (configurable)
- Extract patterns of installed matches to search for or act on affected lines


Configuration
-------------
The dictionary `g:excess_lines_match_setup` can be used to configure the
matches.  The keys are filetypes to which the values apply.  Each value is
another dictionary where the keys are the mode in which the list of
match-specifications they map to are active.

There is one special key `*` that applies to all filetypes without a key.

The three valid modes are:

- `'permanent'` : active in all modes
- `'insert'` : only active in insert mode
- `'normal'` : only active when not in insert mode

Note that each of the missing mode-keys of a specific filetype falls back to the
one in the default entry `*` individually.

For example, to add special behavior for `markdown` files you can add an entry
similar to this one:

    let g:excess_lines_match_setup['markdown'] = {
        \   'permanent': s:expl_permanent_matches,
        \   'insert': s:expl_insert_mode_matches,
        \   'normal': [],
        \ }

The match specifications consist of arguments to `matchadd()`.

    [['highlight-group', 'pattern', priority], ...]

To highlight all characters beyond column 80 you could use this list of match
specifications:

    let s:expl_permanent_matches = [
        \   ["LineNr", '\%81v.\+', -70],
        \ ]

In insert mode, you might want to override the permanent match from above
with an unobtrusive undercurl and place a warning sign at column 70.  This is
what the following list of match-specifications does.

    let s:expl_insert_mode_matches = [
        \   ["Todo",  '\zs\%70v.\ze.*\%#', -50],
        \   ["Todo",  '\%#.*\zs\%70v.\ze', -50],
        \   ["Undercurl",  '\%81v.\+\%#.*$', -50],
        \   ["Undercurl",  '\%#.*\zs\%81v.\+\ze$', -50],
        \ ]

So there is a lot possible, but if you just want to highlight excess chars in
selected filetypes starting at different columns, you can use something like
this:

    let g:excess_lines_match_setup = {
        \ '*': { 'permanent': ["Error", '\%81v.\+', -50]},
        \ 'html': { 'permanent': ["Error", '\%91v.\+', -50]},
        \ 'text': { 'permanent': ["Error", '\%101v.\+', -50]},
        \ }

Display
-------
Use the following commands to turn the display in one buffer on/off or toggle
it:

    ElShowExcessLines
    ElHideExcessLines
    ElToggleExcessLines

Active Patterns
---------------
You can extract the patterns of active matches by index (zero based).  The
permanent patterns come first and then either insert or normal mode patterns.

The idea is to have one special position (most likely the first) with the main
pattern, so that you can work with it.  This is the command defined by this
plugin to set the search pattern to the first match:

    ElSetSearchPatternToFirstActivePattern

Use the following function to access any active match pattern.

    g:EL_GetActivePattern(index)

Override Patterns
-----------------
It is possible to temporarily install a different match-setup in a buffer.  This
can be useful if you repeatedly work with the same set of patterns.  For
example, you could highlight several different patterns and copy each of them to
the search register to jump to the matches.

Use these functions to work with override patterns.  The argument `match_setup`
is a dictionary with the same format as `g:excess_lines_match_setup`:

    call g:EL_InstallOverridePatterns(match_setup)
    call g:EL_UninstallOverridePatterns()

Documentation
-------------
There is documentation in the plugin-file `plugin/excess-lines.vim`.  See the
top for configuration, and the bottom for public functions and commands.
