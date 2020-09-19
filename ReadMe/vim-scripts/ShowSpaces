# vim-showspaces
A plugin to show spaces at the beginning of lines

This plugin was created to help deal with collaborators who mix tabs and spaces.
It shows spaces at the beginning of a line even if they are mixed with tabs.


## Usage
Activate the highlighting by setting the b:showSpaces to 1:

```vimL
let b:showSpaces = 1
```

If you want to only activate it for some filetypes put it in the corresponding
ftplugin, otherwise in your vimrc.


The plugin also gives a ToggleShowSpaces command which toggles the highlighting 
when you call it.


## Configuration

There are two things that can be configured:
- Using concealchars
- Changing the highlight color

Using concealchars makes the spaces more visible, but the highlighting disappear
when the cursor is on the same line. Also, some other plugin could be using it.
Enable them in your vimrc:

```vimL
let b:showSpacesConceal = 1
```

To change the highlight color, set the color for the MoreSpacesAtBeginning
group (The default colors are the ones from ErrorMsg):

```vimL
hi! link MoreSpacesAtBeginning Error " to set it to the colors of Error
hi! MoreSpacesAtBeginning ctermfg=13 ctermbg=2 " to set the colors manually
```


