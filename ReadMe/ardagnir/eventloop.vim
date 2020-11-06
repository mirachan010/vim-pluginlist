
EventLoop.vim
============

This is just an EventLoop framework I built for [pterosaur](https://github.com/ardagnir/pterosaur). I'm keeping it in a seperate plugin so other people can use it.

##Basic Usage
*EventLoop uses a syntax similar to vim's autocommands*
- :ElGroup &lt;groupname&gt; starts editing an EventLoop group
- :ElCmd adds a command to the EventLoop group. This command will be repeated every .2(configurable) seconds.
- :ElGroup END ends group editing
- :ElGroup! &lt;groupname&gt; removes a group and all its commands
- :ElSetting timer &lt;time&gt; changes the time between function calls of the current group to &lt;time&gt;*100 milliseconds.

##Example
    
    ElGroup! pterosaur
    
    ElGroup pterosaur
      ElSetting timer 4
      ElCmd call CheckConsole()
      ElCmd call OutputMessages()
    ElGroup END

##Requirements
- Vim with +clientserver
- GNU/Linux or OS X. Probably works on other unix-like systems too.

##Installation
Use pathogen.

    cd ~/.vim/bundle
    git clone https://github.com/ardagnir/eventloop.vim

##Notes
- Timers are rounded up to the nearest even number and are a best-case value. (Your function won't get called faster than the timer, but it might get called slower.)

##Bugs
- Using EventLoop hides the cursor when typing ex commands.

##License
EventLoop is licensed under the AGPL v3
