Repo Vimrc
==========

Repo Vimrc is a vim plugin which allows you to have different additional .vimrc
files for each of your git repositories and store those files in your `.vim/`
directory. There are other plugins which will let you create .vimrc files
in your project's directory, but this approach has some advantages, especially
if you keep your dotfiles under version control:

1. Your custom .vimrc files are in your `.vim/` directory so they can be kept
   under version control.
2. Your custom .vimrc files will automatically apply to any version of the
   repository you clone. Including your fork and it's upstream.
3. If your custom .vimrc files are kept under version control they can easily
   be synced between all the machines you work on.

Usage
-----

Open any file within a git repository and type:

    :RepoVimrcEdit

The first time you run this, it will prompt you to add a human readable name to
your .vimrc file. Once you do that, it will open in a new buffer. Add your
custom .vimrc settings and save the file.

The file will be sourced the next time you open a file in that repository, but
if you want the settings sourced immediately, you can run:

    :RepoVimrcSource

Installation
------------

If you use [Vundle](https://github.com/gmarik/vundle) (like me) just add this
line to your `.vimrc`:

    Bundle 'captbaritone/repo-vimrc'

If you use [Pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone git://github.com/repo-vimrc.git

Customization:
--------------

There are a few values you can customize by adding these lines to your .vimrc.
These examples also show their default values:

The directory in which the repository specific .vimrc files will be created:

    let g:repo_vimrc_dir = '~/.vim/repo_vimrcs/'

The extension the .vimrc files are expected to have:

    let g:repo_vimrc_ext = '.vimrc'

If you find yourself running the create/source/edit command frequently, you may
want to map them to something quicker by putting something like this in your
`.vimrc`:

    :map <Leader>rve :RepoVimrcEdit<Esc>
    :map <Leader>rvs :RepoVimrcSource<Esc>

How?
----

When you open a file, Repo Vimrc looks at the hash of the first commit in
that file's repository. It uses that as a unique identifier to load that
project's .vimrc.

The .vimrc files are stored, by default, in `~/.vim/repo_vimrcs/` with names
that look like:

    d207d350995a6c0bc3b32fb5af893de4f9fc0a8a-openbook.vimrc
    c86595aa283e57ca13a4c89adeffd7f09e9089e4-ultisnips.vimrc

The first string of characters is the hash of the first commit in the
repository and the portion after the dash is the string you supplied when you
created the .vimrc.

Contribute
----------

I would love to hear about any issues you are having, any improvements you
would like to see or any patches you wish to contribute. Please either use the
GitHub issues, submit a pull request or contact me directly:
[JordanEldredge@gmail.com](mailto:jordaneldredge@gmail.com) or on Twitter
[@captbaritone](https://twitter.com/captbaritone).

