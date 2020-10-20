# vim-gol
![Plugin Preview](preview.gif)

A hacked-out implementation of [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), written in Vimscript.

It's not good code, it'll probably break if you install it, but hey, I had an unreasonable amount of fun writing it.

So if I haven't talked you out of trying it yet, here's how you use it. Try at your own peril.

## Installation
```vim
" Vim-plug
Plug 'PsychoLlama/vim-gol', { 'on': 'GOL' }

" Vundle
Plugin 'PsychoLlama/vim-gol'
```

## Commands

### `:GOL`
Starts a new blank game in a tab. The function of some main keys are changed to make interacting easier.

### `:GOLPattern <name>`
Places a pattern where your cursor is. For example, `:GOLPattern glider` adds a glider.

### `:GOLPlay`/`:GOLPause`
Starts and stops the game, respectively.

### `:GOLReset`
Resets the game state back to an empty screen.

### Mappings
- `p` toggles play & pause
- Both `i` & `a` add a pattern (`:GOLPattern`)
- `r` resets game state (`:GOLReset`)
- `<space>` toggles the cell under your cursor
