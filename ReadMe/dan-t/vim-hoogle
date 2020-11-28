hoogle Vim Plugin
=================

A very minimalistic [hoogle](<http://www.haskell.org/hoogle/>) plugin that extracts the symbol/identifier
under the cursor and calls the browser with a specified URL to look
up the given symbol/identifier.

The default settings for the browser and the URL are:

    let g:hoogle_browser = 'firefox'
    let g:hoogle_url     = 'https://www.fpcomplete.com/hoogle?exact=on&q='

There's only one vim command defined by `vim-hoogle` that you might bind in the following way:

    nmap <F1> :Hoogle<CR>
    
So pressing `F1` will extract the symbol/identifier under the cursor and
call the browser with the URL and append the extracted symbol/identifier.

Credits
=======

The code for extracting the symbol/identifier was taken from [vim-hdevtools](<https://github.com/bitc/vim-hdevtools>).
