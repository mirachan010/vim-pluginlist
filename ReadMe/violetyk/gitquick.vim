# gitquick.vim
Show changes between branch, using QuickFix.

# Quick Start
1. Installation
Download, unzip, put under the ~/.vim directory.  
If you are using [Vundle](http://github.com/gmarik/vundle), as follows:

    ```vim
    :BundleInstall violetyk/gitquick.vim
    ```

2. Launch `vim`, run the following command:
    ```vim
    :Gitquick {branch-name} [{branch-name}]
    ```

If you omit the second argument, `{branch-name}` is `current-branch`.  
