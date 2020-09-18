vim-lsp-julia
=================

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

[The Julia programming language](https://julialang.org/) support for [vim-lsp](https://github.com/prabirshrestha/vim-lsp) using [LanguageServer.jl](https://github.com/julia-vscode/LanguageServer.jl).

## Installation

1. Install [julia](https://julialang.org/) and include the executable in `$PATH`, or set the path to `g:lsp_julia_path` in your vimrc.

1. Install the vim plugins ([async.vim](https://github.com/prabirshrestha/async.vim), [vim-lsp](https://github.com/prabirshrestha/vim-lsp), and [vim-lsp-julia](https://github.com/machakann/vim-lsp-julia)). Read [the vim-lsp documents](https://github.com/prabirshrestha/vim-lsp) for more details.


### Note on installation

`Vim-lsp-julia` includes `LanguageServer.jl` and its dependencies as git-submodules. Probably your plugin manager handles this automatically. However, if you manually installed this plugin or failed to run the language server, open vim and run `:call lsp_julia#update()<CR>`.

## Known issue

 - The first one or two launch(es) might fail or take so long time. [Ref.](https://github.com/julia-vscode/SymbolServer.jl/issues/56)
 - Buffer texts may be messed up after a complete item insertion. It is able to circumvent this problem with setting `let g:lsp_text_edit_enabled = 0` though it stops some useful features.
