gitignore.vim
=============

A Vim plugin that automatically adds the entries in a repo's .gitignore file to
`wildignore`, meaning that those files do not appear in the wild menu. Plugins
(such as [CtrlP]) that depend on `glob()` or `globpath()` will also ignore these
files.

Note: This plugin requires vim to be compiled with Python support.

## Fugitive Integration
This plugin uses [fugitive] to detect git repositories. The plugin will then add
that repo's gitignore entries to `wildignore`.

If you don't want that to happen automatically, create the file
`.vim/after/plugin/disable-gitignore-fugitive.vim` with the single command:

```
autocmd! wildignorefromgitignore_fugitive
```

## Manual Triggering
If you need to invoke the functionality manually, put this in your .vimrc:

```
map <silent> <unique> <Leader>foo <Plug>WildignoreFromGitignore
```

which will look for a .gitignore file in the same directory as the current file.

You can also map against the `:WildignoreFromGitignore` command that accepts
a directory name as in:

```
map <Leader>baz :WildignoreFromGitignore /path/to/some/repo<CR>
```

## Acknowledgments
This plugin is forked from the [gitignore.vim script][gitignore.vim] maintained
by Adam Bellaire on [vim.org], which is in turn based on [this StackOverflow
post][stackoverflow].

[fugitive]: https://github.com/tpope/vim-fugitive
[CtrlP]: https://github.com/kien/ctrlp.vim
[gitignore.vim]: http://www.vim.org/scripts/script.php?script_id=2557
[stackoverflow]: http://stackoverflow.com/a/581860
[vim.org]: http://www.vim.org
