# messUp.vim

A useless vim plugin.

This plugin allows to transform the last selected text.

# Usage

 - Reverse the selected text
`<Leader>er`

 - Shuffle the last selected text
`<Leader>es`

# Overriding mappings

This the defaults mappings are not convenient with your current configuration it is posisble to override them. Put the following line in your `.vimrc`:

    let g:messUpVim_map_keys = 0

Then the mappings to redefine are the folowing:

    vnoremap <key> <Esc>:call ProcessSelectedText('ReverseString')<CR>
    vnoremap <key> <Esc>:call ProcessSelectedText('RandomizeString')<CR>
    vnoremap <key> <Esc>:call ProcessSelectedText('RotateString')<CR>
