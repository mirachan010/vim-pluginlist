# FYT.vim - Flash Yanked Text

A very simple plugin which gives you a visual clue of the text you just yanked.

![demo](https://www.statox.fr/posts/vim/vim_flash_yanked_text/flash_yanked_text.gif)

# Configuration

You can configure how long you want the flash to last by setting the following variable in your `.vimrc`. The time is in milliseconds and defaults to 500:

    let g:FYT_flash_time = 100

You can configure the highlighting group used to highlight yanked text by
setting the following variable. If not set the default value is `'IncSearch'`.

    let g:FYT_highlight_group = 'MyOwnHighlightGroup'

# Alternative

When I wrote this plugin I didn't know [machakann/vim-highlightedyank](https://github.com/machakann/vim-highlightedyank) existed. If FYT doesn't work for you, you probably want to consider using this one instead.

# About

If you're curious about why I did this plugin or how I did it have a read [here](https://www.statox.fr/posts/vim/vim_flash_yanked_text/)
