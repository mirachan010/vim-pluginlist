Asynchronous make plugin for Vim 8.0 and above.

To start make in the background, run the following command:

    :AsyncMake

This invokes the program set in the 'makeprg' option in the background. The
results are processed and added to a quickfix list. Only one instance of the
make command can be run in the background at a time. Arguments passed to the
":AsyncMake" command will be passed on to the external make command:

    :AsyncMake -f SomeMake.mak

To display the status of the currently running make command, use the
":AsyncMakeShow" command.

To cancel the currently running make command, use the ":AsyncMakeStop" command. 

When a make is running in the background, if you quit Vim, then the make
process will be terminated.

