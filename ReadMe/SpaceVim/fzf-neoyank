# fzf-neoyank

Allows browsing and putting any register history saved with [Neoyank][neoyank].

An [FZF][fzf] source for neoyank. FZF is a fuzzy finder compatible with vim.
Neoyank saves yank history. Combining the two creates a fuzzy finder for your
yank history.

## Requirements

- [FZF][fzf]
- [Neoyank][neoyank]

## Usage

The `:FZFNeoyank` command opens an FZF pane with the history of the default
register. Selecting an item from the list puts it into the current buffer.

The `:FZFNeoyankSelection` command does the same thing, but replaces the visual
selection.

## Key Mappings

This plugin doesn't have any default key mappings. Some useful mappings might
be:

```vim
nnoremap <leader>y :FZFNeoyank<cr>
nnoremap <leader>Y :FZFNeoyank " P<cr>
vnoremap <leader>y :FZFNeoyankSelection<cr>
```

These mappings set up `<leader>y` to put from the default register. If you are
in normal mode, it puts after the cursor. If you are in visual mode, it replaces
the selection.

It also sets up `<leader>Y` (uppercase) to put after the cursor in normal mode.

## Documentation

For complete command and argument documentation, check
[doc/fzf_neoyank.txt](doc/fzf_neoyank.txt), or

```vim
:help fzf-neoyank
```

[fzf]: https://github.com/junegunn/fzf
[neoyank]: https://github.com/Shougo/neoyank.vim
