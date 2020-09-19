# vim-on-write
Easily register commands executed when the current buffer or a given files matching a glob are saved

## Installation
This plugin follows the standard runtime path structure and it can be installed with a variety of plugin managers:

* Vundle
  * Add this line to your ~/.vimrc (or $HOME\vimfiles\.vimrc on Windows) configuration file:
  * `Bundle 'andreax79/vim-on-write'`

* Pathogen
  * Go in your Vim bundle directory ~/.vim/bundle ($HOME\vimfiles\bundle on Windows) and execute the following command:
  * `git clone https://github.com/andreax79/vim-on-write`

* Manual
  * Copy all of the files into your `~/.vim` ($HOME\vimfiles on Windows) directory

## Usage

**:OnWrite < command >**

    Register a command executed when the current buffer is saved.
    Only one command can be registered for a buffer.

*Example:*

    The following command copy the current file on the server when the buffer
    is written.
    :OnWrite scp % server:/tmp/

**:OnWriteGlob < glob > < command >**

    Register a command executed when a file matching the glob is saved.
    Only one command can be registered for a glob, but a single file can
    match multiple glob.

*Example:*

    The following command copy the *.py files when are saved.
    :OnWriteGlob *.py scp % server:/tmp/

**:CancelOnWrite [< glob >]**

    Remove the command triggered for the current buffer or a glob.
