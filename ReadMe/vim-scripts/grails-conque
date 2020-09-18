Grails Shell Plugin
==================

Simple plugin that uses ConqueTerm to run tests, interact with the shell, and use the grails console inside vim. To use this
you need to have ConqueTerm installed beforehand. I recommend using [pathogen](https://github.com/tpope/vim-pathogen "Pathogen").

If thats the case you can do:
```sh
cd ~/.vim/bundle
git clone https://github.com/rosenfeld/conque-term.git
git clone https://github.com/hoffoo/vim-grails-console.git
```

You can also use [VAM](https://github.com/MarcWeber/vim-addon-manager), in this case you don’t need to care about dependencies:

```vim
" In your vimrc
call vam#ActivateAddons(["grails-conque"])
```

Testing
------
You can either run the entire file or the test function under your cursor. 


```vim
" Start the grails shell
:StartGrailsConque

" Run the current file as a Grails test
:GrailsRunTestFile

" Run the Test under the cursor
:GrailsRunCurrentTest

" You can also run a test by name
:GrailsRunTest TestName

" Rerun the last test
:GrailsReRun
```

```vim
" Settings:

" NOTE: all the keymappings apply only to the _grails_ buffer so not to conflict
" with the rest of your setup

" set this to open the shell buffer across the bottom in a split
let g:GrailsShellStartSplit = 1

" remap an insert mode key to switch back to previous buffer
let g:GrailsShellReturnKey = "<C-w><C-w>"

" if this is set insert mode backspace will be remapped to <C-w> to delete 
" whole word backwards
let g:GrailsShellRemapBS = 1

" command that will be passed the tests url when running :GrailsTestsBrowser
let g:GrailsTestsBrowser = "chromium --app=file://"

" You can override the path to the grails executable using:
" default is grails
let g:GrailsShellExecutable = "/opt/grails/bin/grails"


" Recommended Conque settings
let g:ConqueTerm_ReadUnfocused = 1 " run while not the selected window
let g:ConqueTerm_CloseOnEnd = 1 " quit grails when done
```

You can open a browser frame to show the html output of your tests:
```vim

" this is the executable that will be ran when opening the test result pages
" open in chromium/google-chrome frame with no tabs
let g:GrailsTestsBrowser = 'chromium --app=file://' 
let g:GrailsTestsBrowser = 'firefox ' " NOTE: notice the space

" open with regular tab
let g:GrailsTestsBrowser = '/usr/bin/google-chrome ' 

" and then to open the browser with
:GrailsTestsBrowser

```

Console
-------
Provided you have the grails-console plugin you can run scripts directly to
the grails app from vim. To do this either copy, or link the RunConsole.groovy
file to the scripts directory within your grails project.


```vim
:GrailsRunConsole <filename>.groovy " send the file to groovy console

" Note that by default :GrailsReRun will only rerun tests - to enable
" rerun of console set the option 

let g:GrailsReRunConsole = 1

```


The default behaviour is to enter insert mode after switching back to the grails 
buffer so Conque will update. This way it does not override the 
g:ConqueTerm_InsertOnEnter. You can disable this with g:GrailsShellInsertOnEnter.


![Screenshot](http://i.imgur.com/eOxz0d3.png)

TODO:

- Search upwards if we are in a sub directory of a grails project
- Regex upwards to find the test function name, rather than passing it with the cursor 

Resources:
http://www.objectpartners.com/2012/02/28/using-vim-as-your-grails-ide-part-2/
