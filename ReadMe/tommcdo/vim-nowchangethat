Now Change That
===============

nowchangethat.vim allows you to repeat the change command but on a different
motion. After using the change command (with the `c` operator), or in fact any
other insertion command, you can change a different motion to the same text.

Mappings
--------

`c.` - Repeat the previous change command over the new motion defined by
{motion}.

`c..` - Like `c.`, but use the current line.

Examples
--------

After changing a word to "foo" using `ciw`, change the contents of a quoted
string to "foo" using `c.i"`. You won't have to type "foo" the second time,
and you will remain in Normal-mode.

Settings
--------

To change the default mappings, simply provide your own mappings to the
commands below. The default mappings are as follows:

    nmap c.  <Plug>(change-now)
    nmap c.. <Plug>(change-now-line)

For example, to change the Normal-mode mapping to `cm`, use the following:

    nmap cm <Plug>(change-now)

This will use the mapping `cm`, and the default `c.` will not be mapped.

### g:nowchangethat_no_mappings

If this variable is defined, the default mappings will not be created.
