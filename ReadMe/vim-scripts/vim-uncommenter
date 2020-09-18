# VIM-UNCOMMENTER

`vim-uncommenter` is a simple a plugin to delete all comments in a programming source file, just by pressing `dc` in vim.
#### Step 1.
In most programming language files opened in vim, to delete all of the lines that are comments, simply hit the keys ``dc`` and the comments will all disappear!

===========================================================================

### UPDATE: NOW WORKING FOR DELETING BLOCK COMMENTS WITH MOST OF THE PROGRAMMING LANGUAGES ON THE LIST BELOW

===========================================================================

#### Installation:
[Vundle Plug-in Manager]: https://github.com/VundleVim/Vundle.vim
###### If using [Vundle Plug-in Manager] for `Vim`:
Add the following line to your vimrc file:
```
Plugin 'radovskyb/vim-uncommenter'
```
Launch `vim` and run `:PluginInstall`
[Pathogen.vim]: https://github.com/tpope/vim-pathogen
[Tim Pope]: https://github.com/tpope
###### If using [Pathogen.vim] by [Tim Pope]:
Go to your terminal window and type:
```
cd ~/.vim/bundle
git clone https://github.com/radovskyb/vim-uncommenter.git
```

===========================================================================

### EXAMPLE UNCOMMENT:

Before:
```
# here is a comment
def Hello (name) # here is wierdly placed comment
	puts "\n-------------"
	puts "Hello, #{name}." # even a comment here will be removed
	puts '--------------'
end

puts '######' # this one too, however the `#` inside the single quotes will be fine!

# and here is another comment
[1, 2, 3, 4, 5].each do |i| 
	puts "hello" # and another wierd one
end

# and here is the last comment
Hello("# Benjamin #") # deletes here too
```


After:
```
def Hello (name)
	puts "\n-------------"
	puts "Hello, #{name}."
	puts '--------------'
end

puts '######'

[1, 2, 3, 4, 5].each do |i| 
	puts "hello"
end

Hello("# Benjamin #")
```

===========================================================================

#### Current programming languages that `vim-uncommenter` works with:

	+ Ruby
	+ PHP
	+ Python
	+ Perl
	+ C
	+ C++
	+ C#
	+ Rust
	+ SASS/SCSS
	+ D
	+ Go
	+ Java
	+ Javascript
	+ CoffeeScript
	+ ActionScript
	+ Scala
	+ Pascal
	+ Swift
	+ R
	+ Vimscript
	+ Shell
	+ Makefile
	+ Cobra
	+ Seed7
	+ Powershell
	+ Erlang
	+ Text
	+ VBScript
	+ Small Basic
	+ AutoIt
	+ Lisp
	+ Scheme
	+ Rebol
	+ Haskell
	+ SQL
	+ Ada
	+ AppleScript
	+ Eiffel
	+ Lua
	+ VHDL

===========================================================================

##### Copyright (C) Benjamin Radovsky <radovskyb@gmail.com>.
##### Distributed under the same terms as Vim itself. See :help license.
