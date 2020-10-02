# fern-mapping-collapse-or-leave

The fern plugin for mapping to collapse or leave.

# mapping

### Plug mapping
```viml
nmap <Plug>(fern-action-collapse-or-leave)
```

### Default mapping
```viml
nmap <buffer><silent> h <Plug>(fern-action-collapse-or-leave)
```


# FAQ

### How to disable this plugin's default mapping?

You can set below variable to 1.

```viml
let g:fern#mapping#collapse_or_leave#disable_default_mappings = 1
```

