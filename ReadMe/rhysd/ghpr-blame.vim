Blaming Pull Requests in the file on Vim
========================================

[ghpr-blame.vim][] is a Vim plugin to investigate which line is modified by which pull request.
It's like `git-blame`, but `git-blame` shows which line is modified by which commit.

![screenshot](https://github.com/rhysd/ss/raw/master/ghpr-blame.vim/main.jpg)

This Vim plugin was inspired by [@kazuho's tiny script](https://gist.github.com/kazuho/eab551e5527cb465847d6b0796d64a39).

## Usage

### 1. Run `:GHPRBlame` in the file

By running `:GHPRBlame`, it extract necessary information from `git-blame` command and creates a
list in a temporary window at left of current window.
The temporary window is automatically scrolled when you scroll the current window (see `:help scrollbind`
for the detail).

You can know which line is modified by which pull request by seeing the list.

### 2. Type enter key to know the details of the pull request

When `:GHPRBlame`, it automatically defines a buffer local mapping for inspecting the pull request
for the current line. If you want to know the details of the current line, please type `<CR>` (it can
be customized by `g:ghpr_show_pr_mapping`). It creates another temporary window and show the detail
of the pull request in it.

### 3. Close the list window or run `:GHPRBlameQuit` for cleanup

After your work has been done, please close the list window for pull requests or run `:GHPRBlameQuit`
explicitly. It cleans up the cache for fetching pull requests and `git-blame`.

## Setup API Token

To fetch the details of pull request, this plugin uses [GitHub PullRequest API][]. It may hit
API rate limit when using this plugin heavily.

Please generate and set an API token by below steps.

1. Visit https://github.com/settings/tokens in a browser
2. Click 'Generate new token'
3. Add token description
4. Without checking any checkbox, click 'Generate token'
5. Generated token is shown at the top of your tokens list
6. Set it to `g:ghpr_github_auth_token` (Please be careful. The token is a credential)

### for GitHub Enterprise

You should also prepare the token to access. It should be different from the
github.com's one, so you can supply them by a dict form of
`g:ghpr_github_auth_token`.

```vim
let g:ghpr_github_auth_token = {
        \ 'github.com': '123456abcdef',
        \ 'github.your-company.com': 'abcdef123456',
        \ }
```

In addition, you should set the API url for GHE by `g:ghpr_github_api_url`.

```vim
let g:ghpr_github_api_url = {
        \ 'github.your-company.com': 'https://github.your-company.com/api/v3',
        \ }
```

## License

```
the MIT License

Copyright (c) 2017 rhysd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

[ghpr-blame.vim]: https://bithub.com/rhysd/ghpr-blame.vim
[GitHub PullRequest API]: https://developer.github.com/v3/pulls/
