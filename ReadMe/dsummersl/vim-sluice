Sluice
====

The sluice plugin uses vim's '+signs' gutter to provide additional context
while editing in Vim. It provides two modes of operation:

 * __micro__: The signs gutter will show information relevant to the current
  line directly to the right.

 * __macro__: The gutter is condensed to act like a scroll bar, where the
   overall context of the files are 'shrunk' to fit within the current visible
   signs.

This plugin is extensible (see sluice-plugins). Currently sluice is bundled
with three plugins: search (show all matches to the @/ register), undercursor
(show all matches in the file for the word currently under the cursor), git
(show all additions and subtractions in the file if the file is in a git
repository).

Screenshots
====

Micro mode
----

In 'micro mode' the icon gutter works in the way one normally expects: the
gutter immediately to the left of a line corresponds to the line next to it.

The screenshot below shows how sluice looks in plain old text mode:

![text micro mode screenshot](doc/microtext.png)

When '+icon' support is setup and imagemagick is installed, the same screen
looks like:

![icon micro mode screenshot](doc/micrographic.png)

Macro mode
----

In 'macro mode' the icon gutter works more like a scrollbar. The region with
the same background color as the vim window correspond to what is currently
visible on the screen, while the darker background in the gutter correspond to
parts of the file not currently visible.

In the text version of the gutter plugin below we can see that we are in the
top part of the file, and that the word 'function' (the word that the
cursor is currently resting on) has matches further down in the file. The 'X'
characters denote areas where both a normal search (in this screenshot for
'slash') is also the same general region where the word under the cursor also
matches:

![text macro mode screenshot](doc/macrotext.png)

When graphics are enabled, the same information is rendered thusly:

![icon macro mode screenshot](doc/macrographic.png)

Requirements
====

Vim 7.3+, with '+signs' support, and the [vus](https://github.com/dsummersl/vus) library.

For icon based gutter, vim must have '+icon' support and you need imagemagick
installed. On OSX:

    brew install imagemagick


Testing
====

To run the unit tests you must install the [vimunit

plugin](https://github.com/dsummersl/vimunit). They can be run by typing the
following on the console:

    ~/.vim/bundle/vimunit/vutest.sh autoload/sluice/test.vim 
