# Vim does TODO-lists!

I've tried countless TODO systems but somehow I always end up back with
my trusted TODO.txt. Now I've decided to spice it up a bit.

The first step is syntax highlighting, who knows what'll come next?

## Installation

Move the files `plugins/todotxt.vim`, `ftdetect/todotxt.vim` and
`syntax/todotxt.vim` into the corresponding directories in your
`~/.vim/`. It will detect files named `todo[.txt]` or `TODO[.txt]`.

It will also add the command `:Todo` which opens your todo-file in a new
tab, assuming it is placed inside your home directory.

## Syntax

* If a line starts with a `#` followed by whitespace and text, it will be treated as a headline.
* Three or more dashes (`---`) will make a horisontal ruler.
* A todo item is anything that starts with a non-alphanumeric character, such as `-`, `*` or `+`. You can use whatever you like.
* Everything else is treated as comments.

This what it looks like.

![Vim does TODO-lists!](https://github.com/Lejdborg/todotxt.vim/raw/master/screenshot.png)
