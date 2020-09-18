#INTRO

**Optcmd** is simple plugin, that allow you to call confirm() function 
for your own list of commands (btw, you can have as many lists as you need).
After choosing command it will be processed depend on current prefix parameter.

#INSTALLATION

Install this plugin using vundle (https://github.com/VundleVim/Vundle.vim).

Just add to your **.vimrc** next lines:
`Plugin 'sergio-ivanuzzo/optcmd'`

Then run:
`vim +PluginInstall +qall`

#QUICK START

To work with this plugin add to your .vimrc:

1) **list of dictionaries** like below:
```
let commands = [
    \{'prefix': 'shell', 'command': 'ls -al > file.txt', 'index': '1', 'label': 'ls'},
    \{'prefix': 'func', 'command': 'somePluginFunction()', 'index': '2'},
    \{'prefix': 'cmd', 'command': 'vim_native_command' ,'label': 'some vim cmd'}
    \]
```

**OPTIONS**
#####Commands prefixes:

- **shell** run command in external shell
- **func** run command as vim function (via :call)
- **cmd** run command as simple vim command

#####Index 
This option use as shortcut for confirm() (`:help confirm()` for more details).

This option can be omitted (so, as shortcut will be use first letter of command or label)

#####Label
This option use for output as confirm() choice. Can be omitted.

    
2) **message** for `confirm()` :

`let message = "Choose command:"`

3) **keymap** for `call optcmd#ChooseCommand(message, commands)`:

`nmap <C-k> :call optcmd#ChooseCommand(message, commands) <CR>`

" you can have as many keymaps for this as you want

#ABOUT

I hope, this plugin will be useful for you! 

If you have any questions, propositions etc, please, contact me *sergio.ivanuzzo at gmail dot com*

I will be glad if you help me to improve this plugin!

See also this plugin on vim.org: http://www.vim.org/scripts/script.php?script_id=5276
