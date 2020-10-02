# vim-effort-gf
improved gf command.

# Setting

## `&isfname`
You can change `<cfile>` behavior.

Set `isfname=\\` if you want to resolve php's use statement.

## `let g:effort_gf#config.enable_findroot`
If `v:true`, search file from root dir when can't find by upward search.

## `let g:effort_gf#config.converter`
You can add additional converters.

```
let g:effort_gf#config = {}
let g:effort_gf#config.converters = {}

function! g:effort_gf#config.converters.map_php_namespace(word)
  if effort_gf#is('~/path/to/your/php-project')
    return substitute(a:word, '^App', 'src/app', 'g')
  endif
  return a:word
endfunction
```

