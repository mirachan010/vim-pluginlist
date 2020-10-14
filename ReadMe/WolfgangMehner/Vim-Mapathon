
# Vim Mapathon - An advanced introduction to maps

You will find the slides here: `talk/talk.pdf`

## Code Examples

### Help

The command `:MapathonHelp` picks up the word under the cursor and uses `sprintf` to format the url:

    :MapathonHelp <url-for-sprintf>

    :MapathonHelp www.url.com/with-%s-to-format-the-search

Assembles a shell command: `g:MapathonBrowserExec + g:MapathonBrowserArgs + sprintf(url,word_under_cursor)`

### Search

Call search in your browser:

    :MapathonSearch <search-terms>

    :MapathonSearch please google fix my bug
    :MapathonSearch please stackoverflow fix my bug

Assembles a shell command: `g:MapathonBrowserExec + g:MapathonBrowserArgs + g:MapathonBrowserSearchFlag + shellescape(searchterm)`

### Configuration

Configure your browser via these variables in your `.vimrc`:

    let g:MapathonBrowserExec = 'firefox'
    let g:MapathonBrowserArgs = '-new-window'
    let g:MapathonBrowserSearchFlag = '-search'

## Files

- `talk/talk.pdf`       : the slides
- `plugin/mapathon.vim` : the code examples
- `rc/custom.vimrc`     : example maps for your `.vimrc` 

## Command-Line Completion

Command-Line Completion Plug-in by [KingTiger](https://vim.sourceforge.io/account/profile.php?user_id=18312):
[cmdline completion]( http://www.vim.org/scripts/script.php?script_id=3531 )

Enables `CTRL+P` and `CTRL+N` keyword completion on the command-line.
