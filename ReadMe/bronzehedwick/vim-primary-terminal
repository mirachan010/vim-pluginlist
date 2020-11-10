# Primary Terminal

Simple terminal management for Neovim (and eventually Vim 8).

## Why another terminal manager?

I wanted something very minimal, that only took control of a single
`:terminal` instance at a time; this served my use case well.

I prefer the flyweight simplicity of that approach, since 90% of the
time I only want to interact with the same terminal instance.

If I do need another one, it's easy enough to create another un-managed
`:terminal`, or a process-specific `:e term://my-command`.

## Installation

If you're using a plugin manager, such as [minpac](https://github.com/k-takata/minpac),
follow the instructions in their documentation.

Otherwise, use [native package support](https://neovim.io/doc/user/repeat.html#packages) by cloning vim-primary-terminal to [`packpath`](https://neovim.io/doc/user/options.html#packpath).

```sh
git clone https://github.com/bronzehedwick/vim-primary-terminal \
    ${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/pack/plugins/start/vim-primary-terminal
```

## Commands

vim-primary-terminal provides the following commands:

- `:PrimaryTerminalOpen`: Open the primary terminal in the current window.
- `:PrimaryTerminalOpenSplit`: Open the primary terminal in a horizontal split window.
- `:PrimaryTerminalOpenVsplit`: Open the primary terminal in a vertical split window.
- `:T[!] {args}`: Pass `{args}` to the primary terminal. If `!` is passed, load the primary terminal in the preview window as well.
- `:Tkill`: Kill the current process running in the primary terminal by sending <kbd>Ctrl+c</kbd>

## Key mappings

vim-primary-terminal provides the following [`<Plug>`](https://neovim.io/doc/user/map.html#%3CPlug%3E) mappings:

- `<Plug>(PrimaryTerminalOpen)`: Execute `:PrimaryTerminalOpen`
- `<Plug>(PrimaryTerminalOpenSplit)`: Execute `:PrimaryTerminalOpenSplit`
- `<Plug>(PrimaryTerminalOpenVsplit)`: Execute `:PrimaryTerminalOpenVsplit`

Using `<Plug>` allows you to customize if and what key sequences to map to.

However, if you don't have a preference, add the following mappings to
your `init.vim`:

```vim
nmap <unique> <silent> <leader>t <Plug>(PrimaryTerminalOpen)
nmap <unique> <silent> <leader>r <Plug>(PrimaryTerminalOpenSplit)
nmap <unique> <silent> <leader>y <Plug>(PrimaryTerminalOpenVsplit)
```

## Similar projects

- [neoterm](https://github.com/kassio/neoterm)
- [terminus](https://github.com/brettanomyces/nvim-terminus)
- [editcommand](https://github.com/brettanomyces/nvim-editcommand)
- [nuake](https://github.com/Lenovsky/nuake)
- [split term](https://github.com/vimlab/split-term.vim)

## TODO

- [ ] Vim 8 support

## License

Copyright © 2019–2020 Chris DeLuca

Licensed under the same terms as Vim itself.
