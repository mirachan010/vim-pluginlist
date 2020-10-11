# autocomplete.nvim

autocomplete.nvim is an auto completion framework.
The plugin is a refactored fork of [nvim-lua/completion-nvim](https://github.com/nvim-lua/completion-nvim).

## Features

- Asynchronous completion using the `libuv` api.
- Synchronous sources are equally supported.
- Chain completion inspired by [vim-mucomplete](https://github.com/lifepillar/vim-mucomplete)
- Snippets integration with UltiSnips, Neosnippet and vim-vsnip.
- Apply LSP *additionalTextEdits* if it available.
- Hover window with function documentation.
- Function signature.


## Prerequisites

- Neovim 0.5.0
- [nvim-lsp](https://github.com/neovim/nvim-lsp) if you want to take advantage the LSP completions


## Install

Install with any plugin manager by using the path on GitHub.

```vim
Plug 'mg979/autocomplete.nvim'
```

## Setup

autocomplete.nvim must be attached to the current buffer to work. To do this
for all buffers:

    autocmd BufEnter * call autocomplete#attach()

*NOTE* `autocomplete.nvim` doesn't setup LSP for you. You're on your own for
that.


## Supported Completion Sources

autocomplete.nvim uses a chained completion system inspired by [vim-mucomplete](https://github.com/lifepillar/vim-mucomplete).
It supports both synchronous and asynchronous sources.

- built-in sources:

    * lsp: completion for neovim's built-in LSP.
    * snippet: snippets completion.

- ins-completion sources

    * See `:h ins-completion`

Read `:h autocomplete-chains` for more details.


## Configuration

Read `:help autocomplete-nvim` for full documentation.


### Recommended Setting

```vim
" Initializa options
let g:autocomplete = get(g:, 'autocomplete', {})

" Use <Tab> and <S-Tab> to navigate through popup menu, or force completion
imap            <Tab>   <Plug>(TabComplete)
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
```


### Enable/Disable auto popup

By default auto popup is enabled, turn it off by

    let g:autocomplete.auto_popup = 0

You can toggle auto popup for current buffer:

    :CompletionToggle

or disable it for all buffers where automatic completion is enabled:

    :CompletionToggle!



### LSP Based Snippet parsing

Some language server has snippet support but neovim can't handle that right
now, `autocomplete.nvim` can do it but you need
[vim-vsnip](https://github.com/hrsh7th/vim-vsnip) and
[vim-vsnip-integ](https://github.com/hrsh7th/vim-vsnip-integ) installed.
