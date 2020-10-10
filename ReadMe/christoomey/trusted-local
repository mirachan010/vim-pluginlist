Vim Trusted Local
=================

This plugin adds support for project-local vimrc files, but with the benefit of
requiring you to specifically "trust" the file before it will be loaded.

Local vimrcs
------------

The "trust" mechanism builds on [the `.git/safe` convention][] by creating a
directory in git when trusting the file, and then using that directory as an
safe lookup path. Specifically, we use `./.git/safe/../../.vimrc.local` as the
path to the file.

[the `.git/safe` convention]: https://thoughtbot.com/blog/git-safe

Trusting
--------

For convenience, the plugin will automatically "trust" (create the `.git/safe`
dir) if you `:write` a `.vimrc.local` file in Vim. If you prefer, you can
explicitly "trust" the file by creating the `.git/safe` dir.

Git Ignore
----------

This file is intended to be used for local configuration. With that in mind, I
recommend adding `.vimrc.local` to your global `~/.gitignore`, and putting
shared configuration in [editorconfig][] files, `package.json` scripts, or other
shared configuration files that will be committed to the repository. This file
is just meant to be for your local overrides.

[editorconfig]: https://editorconfig.org/
