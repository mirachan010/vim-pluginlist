                     __ __       __              __               __ 
              ____  / // / _____/ /_  ___  _____/ /______  __  __/ /_
             / __ \/ // /_/ ___/ __ \/ _ \/ ___/ //_/ __ \/ / / / __/
            / /_/ /__  __/ /__/ / / /  __/ /__/ ,< / /_/ / /_/ / /_  
           / .___/  /_/  \___/_/ /_/\___/\___/_/|_|\____/\__,_/\__/  
          /_/                                                        
                                                                     
p4checkout is a simple plugin which uses perforce to check out all read-only
files on edit with support for multiple simultaneous client workspaces.  It
uses the p4 command-line utilities, which must be installed and available in
the PATH.

## Installation

Installing p4checkout is easy but first you need to have the pathogen plugin installed.  If running on Windows, use C:\users\<username>\vimfiles instead of ~/.vim.  If you already have pathogen working then skip Step 1 and go to Step 2.

### Step 1: Install pathogen.vim

First I'll show you how to install tpope's [pathogen.vim](https://github.com/tpope/vim-pathogen) so that 
it's easy to install p4checkout.  Do this in your Terminal so that you get the pathogen.vim file 
and the directories it needs:

    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -so ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

Next you *need to add this* to your ~/.vimrc:

        execute pathogen#infect()

### Step 2: Install p4checkout as a pathogen bundle

You now have pathogen installed and can put p4checkout into ~/.vim/bundle like this:

    cd ~/.vim/bundle
    git clone https://github.com/aslater/p4checkout.git

Quit vim and start it back up to reload it, then type:

    :Helptags

If you get an error when you do this, then you probably didn't install pathogen right.  Go back to
step 1 and make sure you did the following:

1. Created both the ~/.vim/autoload and ~/.vim/bundle directories.
2. Added the "call pathogen#infect()" line to your ~/.vimrc file
3. Did the git clone of p4checkout inside ~/.vim/bundle
4. Have permissions to access all of these directories.

### Step 3: Create the p4root.txt file

Run :help p4checkout-p4root to learn how to create the p4root.txt file required
by p4checkout
