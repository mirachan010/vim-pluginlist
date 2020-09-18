PlugConf
========

*Keeps your .vimrc clean*

PlugConf is a VIM plugin for managing configurations of other plugins. Plugin
configurations are stored in separate files, and loaded only if the plugin is
loaded.

This can come in handy if you, like me, often try out new plugins, but don't
want to mess up your .vimrc file, or if you just want to keep your .vimrc
clean from plugin specific configuration.

It's also a nice feature, if you like to have the same set of configuration
files across multiple platforms or environments, but still load a different
set of plugins. That way, you could have the same mappings handled by
different plugins, only by loading them, and without having to change the
configuration.

PlugConf doesn't load your plugins, but depends on your favorite plugin
manager to handle that. The plugin should work with the most popular plugin
managers, including:

- Pathogen
- vim-plug
- Vundle
- NeoBundle

Even though PlugConf relies on a plugin manager, it knows nothing about which
one you use, as it only looks at the modified `runtimepath`. because of that,
it should work with any plugin manager that installs plugins in a folder
called `bundle` in your vimfiles directory.

I actually use both Pathogen and vim-plug together, and PlugConf handles both
nicely.
