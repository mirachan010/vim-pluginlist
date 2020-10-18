git-blame.vim
=============

A plugin to run `git blame` on the current buffer.

Installation
------------

Use your favorite [plugin manager][plugin-managers], e.g. using [vim-plug][]:

```vim
Plug 'RobertAudi/git-blame.vim'
```

[plugin-managers]: https://github.com/mhinz/vim-galore#managing-plugins
[vim-plug]: https://github.com/junegunn/vim-plug

Commands
--------

| Command     | Description                                        |
|:------------|:---------------------------------------------------|
| `:GitBlame` | Run `git blame` on the file in the current buffer. |

Key mappings
------------

| Key mapping          | Description                  |
|:---------------------|:-----------------------------|
| `<Plug>GitBlameOpen` | Run the `:GitBlame` command. |

Variables
---------

### `g:gitblame_mappings`

Key mappings inside of gitblame buffers.

**Default value:**

```
{
   'previewCommit': 'p',
   'nextCommit':    'd',
   'parentCommit':  'u',
   'close':         'q'
}
```

You can customize any of the mappings:

```vim
let g:gitblame_mappings = {
      \   'previewCommit': '<CR>',
      \   'close': '<Esc>'
      \ }
```

When a mapping is missing, the default value will be used.

### `g:gitblame_enable_root_rev_parse`

Whether or not to use `git rev-parse --show-toplevel` to find the root of the git repository.

**Default value:** `1`

### `g:gitblame_line_numbers`

Configure the line numbers in gitblame buffers.

**Default value:** `-1`

This can be set to any of the following values:

|   Value   | Description                                                         |
|:---------:|:--------------------------------------------------------------------|
|   `-1`    | Use the global values of the `number` and `relativenumber` options. |
|    `0`    | Hide line numbers.                                                  |
|    `1`    | Show line numbers with the `number` option.                         |
|    `2`    | Show relative line numbers with the `relativenumber` option.        |

Functions
---------

| Function                    | Description                  |
|:----------------------------|:-----------------------------|
| `gitblame#blame([{edit}]])` | Run `git blame` on the file in the current buffer using the `{edit}` command.<br>The default value for `{edit}` is `:edit`. |

Credits
-------

This plugin started as a fork of [Easygit][vim-easygit].

- Easygit: [neoclide/vim-easygit][vim-easygit]

[vim-easygit]: https://github.com/neoclide/vim-easygit

License
-------

<details>
  <summary>
    <a href="http://www.wtfpl.net/" rel="nofollow">WTFPL</a> – Do What the Fuck You Want to Public License
  </summary>
  <br>

```text
            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2019 Robert Audi

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.
```

</details>
