# neat.vim

A simple VIM plugin to help you pretty print your data.

![Demo screencast](http://i.imgur.com/0lfg4Q3.gif)


## Usage

Just call `:Neat` to make your current buffer neater. Ranges work as well.

Want to invoke the neatness function of another filetype? Use `:Neat <ft>`.


## Extending neat.vim

To create neatness for your filetypes, add an autoloadable file `neat/<ft>.vim`
and define a global variable with the name `g:neat#<ft>#commands` in there. This
variable has to be a list of command strings to be executed on a temporary
buffer provided by neat.vim.


### Example

To create a simple definition for files of type `xml`, create
`autoload/neat/xml.vim` with the following contents:

```VimL
let neat#xml#commands = [ '%s/></>\r</ge', '%normal ==' ]
```
