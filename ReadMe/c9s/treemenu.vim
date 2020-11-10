
TreeMenu Class
==============
let you create tree menu in vim buffer very easily.

Example
==============

You should write your tree menu plugin in `~/.vim/after/plugin/blah.vim` :

    fun! Func1(...)
        echo a:0
    endf
    new
    unlet m
    let m = g:MenuBuffer.create({ 'buf_nr': bufnr('.') })
    cal m.addPath( 'Tree.Node1',      { 'exe': 'echo' , 'args': [ '"YES"' ] , 'close': 0 })
    cal m.addPath( 'Tree.Node2.zxcv', { 'exe': 'echo' , 'args': [ '"YES"' ] , 'close': 0 })
    cal m.addPath( 'Tree.Node2.zxcv', { 'exe': function('Func1') , 'args': [ '"YES"' ] , 'close': 0 })
    cal m.addPath( 'Tree.Ah Space.A2', { 'exe': 'echo' , 'inputs': [ ['Test:','123'] ] , 'close': 0 })
    cal m.render()

item options:

    label: (string)
        item label

    exe: (string|function)
        command or function to execute.

    args (list)
        arguments for exe

    close: (boolean)
        close buffer after executing command.
        if you try a tab in command, you should set this to 0.

    refresh: (boolean)
        drop menu buffer after executing command.

    inputs: (list[ list ])
        take arguemnts from input

inputs option:

    'inputs':[ [ 
        {Label: String} ,
        {Default Value: String|Integer|Function ref} , 
        {Command Completion: String (optional) },
        {Skip When Empty: Bool (optional) },
    ],[ .. ], [ .. ] ]
