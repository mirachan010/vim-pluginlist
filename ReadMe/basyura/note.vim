note.vim
==========

建設予定地

TODO
----

  - tag
  - date
  - cache tag and date
  - show file list which modified recently
    - sort
  - work with unite.vim
    - filename
    - tag
    - date (?)
  - markdown
  - grep (this must be enough by using default grep, not vimgrep)
  - extention
    - mn
    - filetype

text format
-----------

    # title
    tags : vim, ruby, lifehack
    date : 2012.10.02
    
    section 1
    ---------
    
    ### sub section
    
    ## section 2

cache
-----

### tag 

read tags

    for f in split(glob("**/*.mn"), "\n")
      echo readfile(f, '', 2)
    endfor

cache tags and recacheable by command.
or recache tags on write each time.

### recently

  - getftime

    for f in split(glob("**/*.mn"), "\n")
      echo call getftime(f)
    endfor

variables
---------

- g:mnote_data_path = ''

