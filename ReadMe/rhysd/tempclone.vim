tempclone.vim
=============

[tempclone.vim][] is a Vim plugin to open source code in GitHub also in Vim.

e.g.

```
:Tempclone https://github.com/rhysd/tempclone.vim/blob/master/README.md#L5
```

I often see codes in GitHub. But GitHub is sometimes not convenient because of lack of navigation and definition jump.
But we are Vimmer. We can read codes faster on Vim using them, powerful shortcuts to move a cusor and favorite color scheme.

tempclone.vim clones the target repository to temporary directory and open the code in a new buffer.
When Vim closes, tempclone automatically removes the cloned directories. So you don't need to take care about them.

tempclone.vim clones repositories in background using job feature on Vim8+ or Neovim. So it does not block your operations.

tempclone.vim currently supports GitHub-like URL format. So it's available for GitHub, GitHub:Enterprise or GitLab.

And this plugin is handy for your pull requests workflow.

1. You find a mistake while reading a code on GitHub
2. Copy URL of the page
3. `:Tempclone {url}`
4. Fix the mistake
5. Run tests with `:!` and shell commands
6. Send a pull request with `:!hub pull-request` (using [hub][])
7. Close the Vim (automatically removes temporary repository)

Enjoy!

## Installation

Please follow the instruction in Vim's help.

```
:help add-plugin
```

Or please use your favorite plugin manager like [vim-plug][].

## Usage

`:Tempclone` and `:TempcloneGC` commands are available.

`:Tempclone` provides the feature described in above introduction. You can specify main page, directory page, specific branch page,
specific commit page, and so on. You can simply copy and paste URL in your browser.

`:Tempclone` moves buffer-local current working directory to the repository directory. So you can use shell commands with `:!` in the repository.

```vim
" URL
:Tempclone https://github.com/rhysd/tempclone.vim
" Assumes https://github.com
:Tempclone rhysd/tempclone.vim
" At line 5 of file autoload/tempclone.vim
:Tempclone https://github.com/rhysd/tempclone.vim/blob/master/autoload/tempclone.vim#L5
" Directory autoload/
:Tempclone https://github.com/rhysd/tempclone.vim/tree/master/autoload
" Branch 'develop'
:Tempclone https://github.com/rhysd/tempclone.vim/tree/devbelop
" Specific commit c3cb675
:Tempclone https://github.com/rhysd/tempclone.vim/commit/c3cb675270902fb7186657844082e9def8f3881d
```

The created temporary directory will be removed at `VimLeave` event automatically.
But if you prefer removing temporary directory explicitly, `:TempcloneGC` is available.
`:TempcloneGC` removes a temporary directory created by `:Tempclone`. `:TempcloneGC` can take the same argument as `:Tempclone`.

```vim
" Remove temporary directory for the URL
:TempcloneGC https://github.com/rhysd/tempclone.vim
" Remove temporary directory for current buffer
:TempcloneGC
" Remove ALL temporary directories
:TempcloneGC!
```

You can find the command `:Tempclone xxx` which you executed previously in command line history.
And add 'GC' to the command line, then you can remove the corresponding temporary directory.

## Customize

Please see [document][] for customization.

## License

This repository is distributed under The MIT License.

> Copyright (c) 2017 rhysd

[tempclone.vim]: https://github.com/rhysd/tempclone.vim
[vim-plug]: https://github.com/junegunn/vim-plug
[document]: ./doc/tempclone.txt
[hub]: https://github.com/github/hub
