
# Introduction

`operator-html-escape` provides `operator` to escape HTML entities.

```viml
nmap <c-h> <Plug>(operator-html-escape)
nmap <c-u> <Plug>(operator-html-unescape)
```

This is a operator version of this wiki page:
<http://vim.wikia.com/wiki/HTML_entities>

so this can work with `text-objects`.
You can also enhance `text-objects` by `textobj-user`.

# Requirements

- Vim 7.2 or later
- `operator-user` 0.0.5 or later
  - vim.org: http://www.vim.org/scripts/script.php?script_id=2692
  - GitHub: https://github.com/kana/vim-operator-user
