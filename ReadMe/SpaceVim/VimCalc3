VimCalc3
========

This is port of VimCalc (https://github.com/gregsexton/VimCalc) to Python 3.
Some of the Vims out there have only +python3, hence this port (of very useful
plugin).

Introduction
------------

VimCalc3 provides a convenient way to access a powerful interactive calculator
whilst inside a Vim session. Quickly rattle off a few sums to test an idea.
Perform complex calculations using built-in functions to validate answers.
Quickly and simply convert from octal to hex to decimal and back again. Setup
a bunch of variables to be used in a complex expression. Change variables
easily and then simply re-evaluate the expression. Whatever you may need a
calculator for, VimCalc3 is up to the task.

Not only can VimCalc3 calculate but it uses Vim for input and editing. Quickly
and easily perform edits on previous calculations using the power of Vim and
then re-evaluate them by simply hitting return. Once you've got the answers yank
them into several registers and paste with ease into other buffers!

Type :Calc to open a new window containing the VimCalc3 buffer.

Here are some example expressions run in a VimCalc3 session:

    > 5+4
    ans = 9.0
    > let x = 4
    x = 4.0
    > 9 * sqrt(4)
    ans = 18.0
    > 9**2 - (sqrt(4)+2)
    ans = 77.0
    > 0xff + 2
    ans = 257.0

Here is an example of calculating the roots of a quadratic
equation:

    > let a = 2
    a = 2.0
    > let b = -1
    b = -1.0
    > let c = -6
    c = -6.0
    > ((b*-1) + sqrt(b**2 - 4*a*c))/(2*a)
    ans = 2.0
    > ((b*-1) - sqrt(b**2 - 4*a*c))/(2*a)
    ans = -1.5

Installation
------------

### Requirements

  * Vim 7.0+ with +python3.
  * Python 3 installed.

If you're compiling Vim from source, be sure to use the --enable-python3interp
option. Otherwise check your OS's package distro for a version of Vim with
Python 3 support. On OS X the best option is MacVim. VimCalc3 should work on
Windows too, you will need to install the correct python 3 dll for the version
of Vim you are using. Please see the web for help with this.

### Installation

Use your favourite package manager for Vim.

If you don't have a preferred installation method, I recommend using Vim's
native package management support, simply copy and paste:

	mkdir -p ~/.vim/pack/bundle/start
	cd ~/.vim/pack/bundle/start
	git clone https://github.com/fedorenchik/VimCalc3.git

