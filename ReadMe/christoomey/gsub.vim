Gsub.vim
========

This plugin allows for project wide search and replace (`substitute` in Vim
land), combining [`ag` (aka the_silver_search)][] for seaching and Vim for
defining the changes.

This plugin is heavily inspired by the functionality and interface of the
greplace.vim plugin, but offers an alternative approach in hopes of providing
more consitent and reliable changes.

**NOTE** This is an experiment and very much in alpha.

[`ag` (aka the_silver_search)]: https://github.com/ggreer/the_silver_searcher

Usage
-----

### Gsearch

To start the worklow, run `:Gsearch [<search-args>]` to populate the search
results temp buffer. The `<search-args>` will be passed to ag, so we support
anything they do. If no search is provided, the plugin will use the previous
search pattern (replacing some Vim-specific regex).

### Gsub

The results will be displayed in a new buffer. Make the edits as needed, using
all the power of Vim.

Once complete, run `:Gsub` to have the changes persisted.
