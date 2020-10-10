# :diamond_shape_with_a_dot_inside: mastodon.vim :diamond_shape_with_a_dot_inside:
[![Powered by vital.vim](https://img.shields.io/badge/powered%20by-vital.vim-80273f.svg)](https://github.com/vim-jp/vital.vim)

:bulb: A mastodon client for Vim and NeoVim :bulb:


# :key: How to setup :key:
1. `:MastodonAddAccount {instance-domain} {account-name}`
    - Example: `:MastodonAddAccount mstdn.jp aiya000@example.com`


# :gift: How to use :gift:
## How to toot
1. `:MastodonSay {instance-domain} {account-name}`
    - `mastodon-say` buffer will be opened
    - Example: `:MastodonSay mstdn.jp aiya000@example.com`
2. Please input your toot to `mastodon-say` buffer
3. Please input `ctrl + m` (`<C-m>`, `<Plug>(mastodon-execute-say)`)
    - Your toot will be send to {account-name} in {instance-domain} !


# :grey_exclamation: Requirements :grey_exclamation:
- Basement
    - curl
    - w3m

- If you use Vim
    - Vim 8 or later
    - +job

- If you use NeoVim
    - NeoVim 0.2.0 or later

# :relaxed: TODO :relaxed:
- Add tests ミミ( ＞＜)
