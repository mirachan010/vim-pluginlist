# Vim Dark Mode Switcher

Change Vim background based on the macOS appearance (dark/light mode) introduced in 10.14 Mojave. 

It does nothing for Windows, macOS 10.13 or below, so your `.vimrc` should remain portable. 

# Installation

## Option: [Vim-Plug](https://www.github.com/junegunn/vim-plug) installation (recommended)

Place the following line in your `.vimrc`:
```vim script
Plug 'L-TChen/vim-dark-mode-switcher'
```
and run 
```vim script
:PlugInstall
```    
## Option: Manual installation 

Move `autoload/darkmode.vim` to `.vim/autoload`. 

# Usage

After loading the plugin, you simply call `:darkmode#switch()` to change the background.

For example, you can run `call darkmode#switch()` in normal mode or 
add the following line to `.vimrc` to set up background during startup 
```vim script
call darkmode#switch()
```

# Example

The following is a minimal `.vimrc` if you use Vim-Plug. When Vim starts, it checks if it is running as a GUI (e.g. MacVim).
If so, then change the `colortheme` to NeoSolarized Dark/Light if macOS is in dark/light mode.

```vim script
call plug#begin()

Plug 'iCyMind/NeoSolarized'
Plug 'L-TChen/OSX-Dark-Mode-Switcher'

call plug#end()

if has('gui_running')
  call darkmode#switch()
  colorscheme NeoSolarized
endif
```

# To-do

Ideally, the function should be called whenever the system appearance changes. 
