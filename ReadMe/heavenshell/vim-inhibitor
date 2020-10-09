# vim-inhibitor

[![Build Status](https://travis-ci.org/heavenshell/vim-inhibitor.svg?branch=master)](https://travis-ci.org/heavenshell/vim-inhibitor)

My Rust plugins.

![vim-inhibitor](./assets/vim-inhibitor.gif)

## Lint

Use `cargo check` or `clippy`.

```vim
:Inhibitor
```

If error raised, vim-inhibitor add errors to QuickFix.

You can open with `:cwindow` command.

### More prettify

Also you can open with `:InhibitorErrors` more prettify errors.

## Format

Use `rustfmt`.

```vim
:InhibitorFmt
```

Also you can use `rls`'s `textDocument/formatting`.

## Completion, definition

Use `rls` and `vim-lsp`.

```vim
augroup RLS
  let g:lsp_async_completion = 0
  autocmd User lsp_setup call lsp#register_server({
    \ 'name': 'rls',
    \ 'cmd': {server_info -> ['rustup', 'run', 'stable', 'rls']},
    \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
    \ 'root_uri':{server_info -> lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'Cargo.toml'))},
    \ 'whitelist': ['rust'],
    \ })
  autocmd FileType rust setlocal omnifunc=lsp#complete
  autocmd FileType rust nnoremap <buffer> <leader>c :<c-u>LspDocumentDiagnostics <CR>
  autocmd FileType rust nnoremap <buffer> <leader>d :<c-u>LspDefinition <CR>
  autocmd FileType rust nnoremap <buffer> <leader>h :<c-u>LspHover<CR>
augroup END
```

## License

New BSD License
