kato.vim
========

Post code snippets to a [kato.im][kato] chat room from inside Vim.

Installation
------------

This plugin depends on [kato-cli][kato-cli], a command line interface to
kato.im, available as a Ruby gem as follows:

	gem install kato-cli

The plugin can then be installed using one of your favourite plugin managers.
Here are instructions if you're using [Pathogen][pathogen]:

	cd ~/.vim
	mkdir -p bundle && cd bundle
	git clone https://github.com/tommcdo/vim-kato

Configuration
-------------

Configure the `kato` tool by creating a `~/.kato.yml` file sort of like this:

	user: tommcdo
	room: dev
	room-list:
	  dev: f3098cda27178e87e8d
	  business: 280c8abbe033882268d

More detail can be found in [kato-cli's documentation][kato-cli], maybe.

Usage
-----

kato.vim provides the command `:Kato`. Without a range, it will send the
current line. A specific section can be sent using a range, which is most
easily accomplished from Visual mode.

[kato]: https://kato.im
[pathogen]: https://github.com/tpope/vim-pathogen
[kato-cli]: https://github.com/tommcdo/kato-cli
