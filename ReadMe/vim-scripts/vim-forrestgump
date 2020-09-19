vim-forrestgump
===============

One thing I miss from textmate? ⌘R and ⌥⌘R.

The former would run the current script and display output in a separate
window. The latter would run selected code (or the current line).

This simple plugin aims to mimic that.

## Languages supported

The following interpreters should work out of the box.

    let g:forrestgumps = {
        "php":        ["php", "<?php "],
        "python":     ["python"],
        "ruby":       ["ruby"],
        "perl":       ["perl"],
        "javascript": ["node"],
        "coffee":     ["coffee"],
        "sh":         ["sh"]
        
        " Example:
        "&filetype":  ["/usr/bin/&filetype", "Prepend this to code"]
    }

## Usage

    nmap <leader>r      Run entire file (doesn't have to be saved)
    vmap <leader>r      Run current or selected line(s)
