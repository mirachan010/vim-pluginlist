## Baan omnicompletion for vim

### Features:

* Function argument completion
* completeopt+=preview support, displaying DllUsage/EndDllUsage comments

![baancomplete in action](https://zignar.net/_uploads/baancomplete.png)

### Installation:

I recommend to install baancomplete using pathogen.
If you keep your dotfiles in a git repository you can add baancomplete as a
submodule

    git submodule add https://github.com/chobojordi/baancomplete .vim/bundle/baancomplete
    git submodule init
    git submodule update

To install it without using pathogen extract the tar file in your .vim folder.

    #> cd .vim
    #> tar xvzf baancomplete.tar.gz

Check the following to see if the installation was successful:

Open a file "test.bc" in vim and check:

    :set filetype?          " should be baan
    :set omnifunc?          " should be baancomplete#Complete
    :set completefunc?      " should be syntaxcomplete#Complete

### API File

You won't get any completion results unless you generate an API file.
The file must be put into baancomplete's autoload folder and MUST be called
baancomplete_api.sqlite

So either ~/.vim/bundle/baancomplete/autoload/baancomplete_api.sqlite
or ~/.vim/autoload/baancomplete_api.sqlite
depending on where you installed baancomplete.vim

The API file is generated using the gen_api.py script.
You'll need documentation files generated from the ttstpbaandoc session from
within Baan/ERP LN. (currently only Erp LN FP7 files are tested)
See docs/dlls.txt for some modules you might want to generate documentations for.

In addition the gen_api.py can also be used to add tablefield information to the API file.
So you can get completion for all the tables including their columns description.
Simply invoke gen_api.py without arguments for more usage information.

    python2 gen_api.py

### AutoComplPop

Baancomplete will automatically set up
[AutoComplPop](https://github.com/vim-scripts/AutoComplPop/) if it's installed.

### Requirements:

**Vim**

At least version 7 compiled with +python support.

***Python (gen_api.py)***

For the api generation script Python 2.7 with BeautifulSoup and clint is required.

You can install both via pip using

    pip install clint
    pip install BeautifulSoup
