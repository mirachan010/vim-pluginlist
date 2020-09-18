filesync (File Synchronization plugin)
----------------------------------------

FileSync offers file synchronization functionality. Once you save a file, it
can be synchronized to another folder. 

If you also have `netrw` plugin, you can also synchronize with anything that
`netrw` can save. This means `ftp`, `ssh`, `scp` and any other protocol that
`netrw` supports. 

Installation
----------------------------------------

You can use any package manager that you want: 

* [Pathogen](https://github.com/tpope/vim-pathogen)
    
    * `git clone https://github.com/cosminadrianpopescu/filesync ~/.vim/bundle`

* [Vundle](https://github.com/gmarik/Vundle.vim)

    * `Plugin 'cosminadrianpopescu/filesync'`

* [Neobundle](https://github.com/Shougo/neobundle.vim)

    * `NeoBundle 'cosminadrianpopescu/filesync'`

Usage
----------------------------------------

FileSync offers 3 ways of synchronizing files: 

## Using a system or VIM command

You use a system command or a vim command by calling the `FileSync` command.
The command takes 2 arguments: 

* source (the base folder to be synchronized)
* destination (where to save the files). 

The command (vim or system) has to be in the form: `command -parameters source
destination`. 

*Example:*

`FileSync ~/.vim/bundle/sync/ /tmp/sync`

Once you run this command, any file from the `~/.vim/bundle/sync` folder
and subfolders will be saved in the corresponding place under the
`/tmp/sync` folder. 

For example, if you save the `~/.vim/bundle/sync/plugin/sync.vim` file
in `VIM`, the following command is executed: `!rsync
~/.vim/bundle/sync/plugin/sync.vim /tmp/sync/plugin/sync.vim`. 

The default command is saved in the `g:Sync_default_command` variable and the
default parameters are saved in the `g:Sync_default_args` variable. 

You can add in your `.vimrc` file, for example the following: 

```
let g:Sync_default_command = '!cp'
let g:Sync_default_args = '-f'
```

In this case, the command executed when saving the
`~/.vim/bundle/sync/plugin/sync.vim` file is `!cp -f
~/.vim/bundle/sync/plugin/sync.vim /tmp/sync/plugin/sync.vim`

*Note:*  When changing the default command, if you use a system command, add
the `!` before your command. Otherwise, it will be interpreted as a `vim`
command instead of a system command. 

Another way to use a custom command is to use the `FileSyncCmd` command. This
will take 3 arguments: 

* source (the base folder to be synchronized)
* destination (where to save the files)
* the command (this is the command which will be executed). 

In this case, the same rule with the `!` before command applies. 

## Using `netrw`

You can use the `FileSyncNetrw` command. This takes two arguments: 

* source (the base folder to be synchronized)
* destination (where to save the files)

The `destination` can begin with any protocol, thus, the file will be saved
using that protocol. 

*Example:*

```
FileSyncNetrw ~/.vim/bundle/sync ftp://127.0.0.1/sync
```

This command will synchronize the `~/.vim/bundle/sync` folder with the ftp
folder `/sync`. Please note that you will be asked by `netrw` for a user
and password. 

## Using a custom vim function

You also have the possibility to extent the plugin by defining your own `VIM`
function. This will be receive the two arguments: `source` and `destination`.

*Example:*

If you have in your `vimrc` the following function: 

```
function! My_cp(source, dest)
    let dest_folder = substitute(a:dest, '\v[\/]?[^\/]+$', '', 'g')
    execute "!mkdir -p " . dest_folder
    execute '!cp "' . a:source . '" "' . a:dest . '"'
endfunction
```

You can execute the following command: 

`:FileSyncFunc ~/.vim/bundle/sync/ /tmp/sync My_cp`

If you save then the file `~/.vim/bundle/sync/plugin/sync.vim`, the
following call will be made by `VIM`:

```
My_cp('~/.vim/bundle/sync/plugin/sync.vim',
'/tmp/sync/plugin/sync.vim')
```

Session support
----------------------------------------

All the active synchronizations will survive a session save and reload, if you
have the `options` enabled in your session. (`set sessionoptions+=globals`)

Disabling or removing an active sync
----------------------------------------

You can view all your active synchronizations by issuing the `FileSyncList`
command. You can synchronize a folder to any number of places. If you
synchronize a folder with 3 other places, when you save a file in that folder
or one of its subfolders, 3 commands will be executed. 

From the `ActiveSyncList` window, you can disable temporarily a synchronization
by clicking `e` or you can completely remove it by clicking `r`. A disabled
synchronized folder can be re-enabled by clicking again `e` with the cursor on
top of its line. 

In the `ActiveSyncList` window, the active synchronized folders, have an `*`. 

License
----------------------------------------

GPL License
