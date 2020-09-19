### Simple Playground

  Simple Playground is a vim plugin that insert the script's output in the
  current file in comment format after you write/save the file.
  It works in case one script line produce one output line.
  \****loop print is not working now

#### Aim to reduce time of learning new script or programming language.*

### Note
    *still not work with loop output line*

### Usage
    *Install*
    `copy simply_playground.vim to ~/.vim/plugin`
    *then*
    define patterns in a function by calling `BuildPlayground(execute_command, comment_pattern, print_pattern)` in `~/.vimrc`
##### for example
```vimscript
fun! BuildNodePlayground()
    call BuildPlayground("node", "//=>", "console.log")
    echom "Let's play node"
endfun
```
- *in normal mode* `:call BuildNodePlayground()` to enable the playground
- *to disable* `:call DestroyPlayground()`


![example](https://raw.github.com/jingz/simple_playground/master/out.gif)
