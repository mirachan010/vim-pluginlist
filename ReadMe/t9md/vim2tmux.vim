What is this?
==================================
Send Vim's line to tmux's pane.
You can execute command in specified pane from Vim.

DON'T TRY THIS ON PRODUCTION SERVER.
THIS IS MY PERSONAL EXPERIMENTAL.

Example
==================================
To try following example, or understand explanation,
please read this README.md in vim's buffer, not github's renderd html.

Set Hostname and  Tmux's Pane mapping
----------------------------------

following are host and pane number pare separated with colon
You can parse with `TmuxHost2PaneRegister`
This command set `b:tmux_host2pane`.

    0: web01
    1: web02
    2: db01

To view the result, try `echo b:tmux_host2pane`

Send command to tmux's pane
----------------------------------
Try `SetBufferToTmuxMode` in markdown buffer.
Then press `<F5>` at following line.
`<F5>` is mapped like..

    nnoremap <buffer> <silent> <F5>  :TmuxSendAndNextLine<CR>

TmuxSendAndNextLine do ..

    when line begin with '#'
       parse hostname and set target_pane from table b:tmux_host2pane
    otherwise
       send command with tmux-send -t target_pane
     
Let's try following example.

### web01
    yum install httpd
    service httpd start

### web02
    yum install httpd
    service httpd start

### db01
    cd /usr/local/src
    wget http://example.com/mysql.tgz
    tar xzf mysql.tgz
    ./configure
    make
    make install
    service mysql start

### web01
    service httpd restart

### web02
    service httpd restart

TODO
==================================
* cleanup, DRY, elminate unnecessary global var etc.
