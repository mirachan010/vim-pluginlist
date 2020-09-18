## Inside a vim file
 * `<C-c>` to evaluate the current line.
 * `{Visual}<C-c>` to evaluate a region.

## Custom mapping
```vim
" custom mapping
let g:eval_viml_n = "<C-c>"
let g:eval_viml_v = "<C-c>"

" manual mapping
let g:eval_viml_map_keys = 0
nmap <silent> <C-c> <Plug>eval_viml
vmap <silent> <C-c> <Plug>eval_viml_region
```
