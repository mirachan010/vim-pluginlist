# vim-redircommands
vim plugin for redirecting command output

## Summary

The Vim command redir is very powerful. It allows you to process the output
of commands in whatever way you desire, but it is cumbersome to use. The
**RedirCommands** plugin gives you all of the power without the trouble.

## Functionality

```vim
:R <command>
```
Run command and redirect output to a split window.

```vim
    :R function NERDComment
    :R python print '\n'.join([str(x**2) for x in xrange(100)])
```

```vim
:RR <command> <destination>
```
Run command and redirect output to a destination. Destination can be a
register, global variable, or file. The destination string must not contain
spaces.

```vim
    :RR highlight Comment @a
    :RR highlight Comment =>g:hi_comment
    :RR highlight Comment >hi_comment.txt
```

## Options

```vim
g:redircommands_newbuffer_command
```
The command used to redirect output to a split window. The default is `'R'`.

```vim
g:redircommands_general_command
```
The command used to redirect output to a specified destination. The default is `'RR'`.

## License
The RedirCommands plugin is released under Vim's license.

