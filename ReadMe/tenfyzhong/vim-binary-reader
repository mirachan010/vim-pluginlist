# vim-binary-reader
Use xxd to read binary files. 
When the file extension is empty, I will check the file is binary or not, 
and then I use xxd to open the file if it's a binary file.
When the file has an extension, I will use `g:vim_binary_reader_extensions` 
variable to check it's a binary file or not. 

## setting
`g:vim_binary_reader_disable` disable this plugin.  
The default value is 0.   

`g:vim_binary_reader_extensions` the binary file extensions. It's a regex pattern.  
The default value:  
```viml
let g:vim_binary_reader_extensions = "^\(bin\|dat\|mp3\|mp4\|o\|a\|so\|exe\|class\)$"
```

## requirment
- perl(use `:echo has('perl')` to check your vim support perl or not)
- xxd(use `echo executable('xxd')` to check your system has xxd or not)

