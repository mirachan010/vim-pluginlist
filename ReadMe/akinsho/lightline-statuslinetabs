# Lightline-StatuslineTabs

A very small plugin to add tabs to status line for users of the **lightline**
plugin.

![screenshot of plugin](/screenshot.png?raw=true "screenshot of plugin")


## Usage

The active tab is surrounded by the separators (these default to unicode braces)
the remaining tabs are rendered using the `tab_number_icons` map each number is rendered
according to the icon it is mapped to e.g. `1: 🍎`.

## Installation

* You can install this plugin using the plugin manager of your choice.

### Example:
```vim
 Plug 'itchyny/lightline.vim'
 Plug 'Akin909/lightline-statuslinetabs'
```
## Integration
1. Register the component
```vim
let g:lightline = {}

let g:lightline.component_expand = {
\  'statuslinetabs': 'lightline#statuslinetabs#show',
\ }
```

2. Add the component to lightline, e.g. to add to the left side of the
statusline use -
```vim
let g:lightline = {
    \ 'active': {
    \   'left': [ ['statuslinetabs'] ],
    \}
```
### Configuration

* Tab Number Icons - To configure this provide an alternative map of the following format
    ```
    let g:lightline#statuslinetabs#tab_number_icons = {
        \ 1: 'Tab 1',
        \ 2: 'Tab 2',
        \ 3: 'Tab 3',
        \}
    ```
    The keys must be numbers from 1-10 inclusive and the map should be called `g:lightline#statuslinetabs#tab_number_icons`
* Tab Item separators
   - `g:lightline#statuslinetabs#left_separator` should be set to your desired
       icon
  - `g:lightline#statuslinetabs#right_separator` should be set to your desired

## Motivation

I split this out from my `init.vim` as it might be of use to other
people. That being said if you'd like to make a change consider, forking this repo or making a PR
rather than raising an issue, I'm lazy/working on other OSS projects and not
looking for a time consuming maintainership :smile:.
