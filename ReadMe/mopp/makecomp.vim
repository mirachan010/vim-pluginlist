## makecomp.vim
This is Vim Plugin for complement to :make argument.

## installation
```vim
NeoBundleLazy 'mopp/makecomp.vim', { 'autoload' : { 'commands' : [ { 'name' : 'Make', 'complete' : 'customlist,makecomp#get_make_argument' } ] } }
```
