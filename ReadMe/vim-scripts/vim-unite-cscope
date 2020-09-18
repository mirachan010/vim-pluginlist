# vim-unite-cscope

Uniting cscope with vim
This is a package similar to my other package (https://www.github.com/amitab/atom-cscope)

PS: I just learnt vim scripting recently and there may be mistakes/better way of doing things. 
If you find any problems, please let me know.

## What it does?

* Find this C symbol:                         ✓
* Find this global definition:                ✓
* Find functions called by this function:     ✓
* Find functions calling this function:       ✓
* Find this text string:                      ✓
* Change this text string:                    ✗
* Find this egrep pattern:                    ✓
* Find this file:                             ✓
* Find files #including this file:            ✓
* Find assignments to this symbol:            ✓

## Set it up?

This package depends on:
* vim-unite (https://github.com/Shougo/unite.vim)
* vim-proc (https://github.com/Shougo/vimproc.vim)

After you've installed the dependencies, you can install this package 
with your favioure package manager.

Example:

* With Vundle - 
```
Plugin 'amitab/vim-unite-cscope'
```

* With Pathogen
```
cd ~/.vim/bundle
git clone https://github.com/amitab/vim-unite-cscope
```
* With Neobundle
```
NeoBundle 'Shougo/unite.vim'
```

To generate cscope.out manually, in your project directory run:
```bash
find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files
cscope -q -R -b -i cscope.files
```
And then the package will be able to use the cscope.out file to generate results.

## Usage
1. In command palette, run:`:Unite cscope/find_this_symbol`
2. Then a prompt appears asking for an input
3. Input your query and press enter

## Screenshots
Input your search term:
![ScreenShot](http://i.imgur.com/SZNRrcx.png)

Voila! Results:
![ScreenShot](http://i.imgur.com/C3MtaSz.png)

## Further Improvements?
1. Add 'Change this text string' functionality
