

# QuickMenu plugin

let you execute command quickly. (from a menu). you can reveal a command menu
and press the command number to execute correspond command. so you dont have to
memorize these long command names.


## Installation

    make install

## Configuration

define your commands:

    cal QMAdd( 'Command' , { "command": 'echo 123' } )
    cal QMAdd( 'Command2' , { "command": 'echo 123' } )

and you can define all commands in a hash together:

    let g:quickmenu_cmds = {  "Command1": { "command": "echo 123" } }

define your prefered command key:

    nmap <leader>q :QMOpen()<CR>


## Usage

execute QMOpen commnad to open the quickmenu window, press the number in front
of the command name you want to execute or use cursor to select the command
then press Enter.
