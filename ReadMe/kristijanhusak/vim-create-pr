# vim-create-pr

Open link to new pull request with provided/current branch directly from (neo)vim.

Works with `Github`, `Bitbucket` and `Gitlab` out of the box. Can be [extended](#customization).

## Installation

Using [vim-packager](https://github.com/kristijanhusak/vim-packager)

```vimL
function! PackagerInit() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })
  call packager#add('kristijanhusak/vim-create-pr')

  "Optional packages, but highly recommended
  call packager#add('sodapopcan/vim-twiggy')
  call packager#add('tpope/vim-fugitive')
endfunction
```

## Usage

Through command line (Can be autocompleted):

```
:PR branchname
```

Or if you want to use current branch, just omit the branch name

```
:PR
```

If you are using [vim-twiggy](https://github.com/sodapopcan/vim-twiggy),
select a branch from list and press `pr`.

## Customization

### Additional git services

To add your custom git service to the list, add `g:create_pr_git_services`
variable to your vimrc, using example below:

```vimL
let g:create_pr_git_services = {
\ 'my.gitlab.com': 'https://my.gitlab.com/{{owner}}/{{repository}}/merge_requests/new?merge_request[source_branch]={{branch_name}}'
\ }
```

Make sure key name (`my.gitlab.com` in example above) is part of the string returned from this command:

```
git config --get remote.origin.url
```

### Custom browser

Default browser is used by default, when available (`xdg-open`, `open` on mac).
To use custom browser, add `g:create_pr_browser` to your vimrc with executable name.

Example:

```vimL
let g:create_pr_browser = 'firefox'
```


