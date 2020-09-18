# easy-navigate.vim
Commonly used navigation keymaps for Vim

Storing them in a separate plugin like this to keep `.vimrc` clean

## Install
Using [Vundle](https://github.com/gmarik/Vundle.vim) plugin manager

    Plugin 'NLKNguyen/easy-navigate.vim'

Or manually copy `easy-navigate.vim` to `~/.vim/plugin/`

## Keymaps

**Navigate Between Buffers**

| Keys  | Action                | Equivalence
| ----: | ---                   | ---
| `]b`  | Go to next buffer     | `:bnext`
| `[b`  | Go to previous buffer | `:bprevious`
| `]B`  | Go to last buffer     | `:blast`
| `[B`  | Go to first buffer    | `:bfirst`


**Navigate Between Tabs**

| Keys     | Action                       | Equivalence
| ----:    | ---                          | ---
| `]t`     | Go to next tab               | `:tabnext`
| `[t`     | Go to previous tab           | `:tabprevious`
| `]T`     | Go to last tab               | `:tablast`
| `[T`     | Go to first tab              | `:tabfirst`
| `` ,` `` | Open a new tab               | `:tabnew`
| `,1`     | Go to tab #1                 | `1gt`
| `,2`     | Go to tab #2                 | `2gt`
| `,3`     | Go to tab #3                 | `3gt`
| `,4`     | Go to tab #4                 | `4gt`
| `,5`     | Go to tab #5                 | `5gt`
| `,6`     | Go to tab #6                 | `6gt`
| `,7`     | Go to tab #7                 | `7gt`
| `,8`     | Go to tab #8                 | `8gt`
| `,9`     | Go to tab #9                 | `9gt`
| `,-`     | Open file browser in new tab | `:Texplore`


**Navigate Between Quickfix Errors**

| Keys  | Action               | Equivalence
| ----: | ---                  | ---
| `]q`  | Go to next error     | `:cnext`
| `[q`  | Go to previous error | `:cprevious`
| `]Q`  | Go to last error     | `:clast`
| `[Q`  | Go to first error    | `:cfirst`

**Navigate Between Location List Items**

| Keys  | Action              | Equivalence
| ----: | ---                 | ---
| `]l`  | Go to next item     | `:lnext`
| `[l`  | Go to previous item | `:lprevious`
| `]L`  | Go to last item     | `:llast`
| `[L`  | Go to first item    | `:lfirst`


**Navigate Between Wrapped Lines** 
*These don't affect the usual behavior of the motion keys*

| Keys  | Action                         | Equivalence
| ----: | ---                            | ---
| `j`   | Go down a line or wrapped line | `gj`
| `k`   | Go up a line or wrapped line   | `gk`

##Related Project

[vim-unimpaired](https://github.com/tpope/vim-unimpaired)
