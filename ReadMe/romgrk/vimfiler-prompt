
# Vimfiler prompt

Navigate VimFiler by typing + autocompletion

![alt text](./demo.gif "VimFilerPrompt demo")

## Usage

Command: `VimFilerPrompt`

Map something to `VimFilerPrompt`, and that's it.

```viml
autocmd FileType vimfiler nmap <buffer> i :VimFilerPrompt<CR>
```

## Mappings

`<TAB>` : autocomplete; if there is only 1 match, jumps directly

`<S-TAB>`: previous completion

`<CR>`, `/`: jump

`..`: parent directory

## Highlight groups

```viml
hi! FilerCursor   cterm=reverse ctermfg=12 ctermbg=8 guifg=#000000 guibg=#efefef gui=NONE

hi! FilerSelected cterm=NONE ctermfg=7 ctermbg=4 guifg=#efefef guibg=#599eff gui=NONE
hi! FilerActive   cterm=NONE ctermfg=7 ctermbg=4 guifg=#efefef guibg=#505050 gui=NONE

hi! FilerMatch    cterm=NONE ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    gui=NONE
hi! FilerNoMatch  cterm=NONE ctermfg=1    ctermbg=NONE guifg=#9a9a9a guibg=NONE    gui=NONE

hi! def link FilerPrompt     Question
hi! def link FilerInput      MoreMsg
hi! def link FilerCompletion Comment
```
