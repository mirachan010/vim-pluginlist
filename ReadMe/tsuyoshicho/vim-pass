# vim-pass [![Powered by vital.vim](https://img.shields.io/badge/powered%20by-vital.vim-80273f.svg)](https://github.com/vim-jp/vital.vim) [![Powered by vital-codec](https://img.shields.io/badge/powerd%20by-vital--codec-80273f.svg)](https://github.com/tsuyoshicho/vital-codec)
<!-- [![Powered by vital-Whisky](https://img.shields.io/badge/powered%20by-vital--Whisky-80273f.svg)](https://github.com/lambdalisue/vital-Whisky) -->

Vim password-store API.
see [Pass: The Standard Unix Password Manager](https://www.passwordstore.org/)

Currenlty *get* support. usable like `auth-source` at emacs.

## Feature
* "Pass" style data get / get_startup (and other variant) support.
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) plugin : selection support.
  - `<C-x>` : only copy to register
  - `<CR>`  : put before cursor, 'P'
  - `<C-v>` : put after  cursor, 'p'
* [vim-clap](https://github.com/liuchengxu/vim-clap) plugin : selection support.
  - only work put like 'gP'.
* Limited support OTP(HOTP).

## Require

- gpg
  - agent configuired as loopback enable
- password-store like saved data
- ctrlp.vim plugin
  - if use selection feature.
- vim-clap plugin
  - if use selection feature.

## Installation

```vim
dein#add('tsuyoshicho/vim-pass')
if dein#tap('ctrlp') && dein#tap('vim-pass')
  let g:ctrlp_extensions = get(g:, 'ctrlp_extensions', [])
        \ + ['pass']
endif
```

or

```toml
[[plugins]]
repo = 'tsuyoshicho/vim-pass'
depends = ['ctrlp.vim','vim-clap']
hook_add = '''
  let g:ctrlp_extensions = get(g:, 'ctrlp_extensions', [])
        \ + ['pass']
'''
```

## Usage

```vim
" in vimrc
" configured at end of vim startup
call pass#get_startup('g:test_gh_token','Develop/Github')
call pass#get_startup('g:test_gh_username','Develop/Github','username')

function! test() abort
  let password = pass#get('Service/foobar')
  " ...
endfunction
```

```toml
# in plugin setting(dein's toml)
[[plugins]]
repo = 'tsuyoshicho/vim-pass'

[[plugins]] # https://pixe.la/
repo = 'mattn/vim-pixela'
depends = ['open-browser.vim','vim-pass']
hook_add = '''
  " let g:pixela_username = 'user'
  " let g:pixela_token    = 'token'

  call pass#get_startup('g:pixela_username','Develop/Pixela','username')
  " VimPixela work OK
  call pass#get_startup('g:pixela_token','Develop/Pixela')
  " startup-time countup do not correct work.
  " It work or does not work depending on the processing order of events
'''

[[plugins]]
repo = 'tpope/vim-rhubarb'
depends = ['vim-fugitive','vim-pass']
# on_if= 'executable("hub")'
hook_add = '''
  call pass#get_startup('g:RHUBARB_TOKEN','Develop/Github')
'''

[[plugins]]
repo = 'kyoh86/vim-docbase'
depends = ['vim-pass']
hook_add = '''
  let g:docbase = []
  call pass#get_startup_funcall(
        \ { v ->
        \ add(g:docbase,
        \   {
        \     'domain': 'example1',
        \     'token' : v
        \   }
        \  )
        \ },
        \ 'Develop/DocBase1'
        \)
  call pass#get_startup_funcall(
        \ { v ->
        \ add(g:docbase,
        \   {
        \     'domain': 'example2',
        \     'token' : v
        \   }
        \  )
        \ },
        \ 'Develop/DocBase2'
        \)
'''

[[plugins]] # Slack
repo = 'mizukmb/slackstatus.vim'
depends = ['webapi-vim','vim-pass']
hook_add = '''
  " let g:slackstatus_token = '<YOUR_SLACK_TOKEN>'
  " my hoge
  call pass#get_startup('g:slackstatus_token','Message/Slack/myhoge.legacy')
  " vim-jp
  " call pass#get_startup('g:slackstatus_token','Message/Slack/vim-jp.legacy')
  "
  function! s:slack_list(A,L,P) abort
    let slacklist = ['myhoge','vim-jp']
    return slacklist
  endfunction

  function s:slackstatus_change_token(team) abort
    let path = 'Message/Slack/' . a:team . '.legacy'
    let g:slackstatus_token = pass#get(path)
  endfunction

  command! -nargs=1 -complete=customlist,<SID>slack_list SlackStatusChange :call <SID>slackstatus_change_token(<f-args>)
'''

[[plugins]] # Mastodon
repo = 'mattn/vim-mastodon'
depends = ['webapi-vim','vim-pass']
hook_add = '''
  " mstdn.jp
  " let g:mastodon_host = 'mstdn.jp'
  " call pass#get_startup('g:mastodon_access_token','Message/Mastodon/mstdn.jp')

  function! s:mastodon_completion(A,L,P) abort
    let host_list = ['mstdn.jp']
    return join(host_list,"\n")
  endfunction

  function s:mastodon_change_hosttoken(host) abort
    let path = 'Message/Mastodon/' . a:host
    let g:mastodon_host = a:host
    let g:mastodon_access_token = pass#get(path)
  endfunction

  command! -nargs=1 -complete=custom,<SID>mastodon_completion MastodonHostChange :call <SID>mastodon_change_hosttoken(<f-args>)
'''

```

## limitation

- Currently support API:get(default password/entry select) only
- Entry select require exact match
- When plugin's variable configure at load/starup time,sometimes it works not correctly like above Pixela startup-time countup
- *nix non-GUI environment,need `g:pass_use_agent` set as 0 manually.
