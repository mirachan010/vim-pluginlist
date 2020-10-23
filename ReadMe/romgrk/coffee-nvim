
# Coffee Host for Nvim
======================

Version: **0.1**

This plugin aims to provide a rpc-plugin host for coffeescripting (node.js),
as well as a familiar set of instructions inspired by vimscript.

```viml
let g:COFFEELIB_ENABLE = 1

" if
let g:debug = 1
" then
"    <F1>: start coffeelib host
"    <F2>: stop coffeelib host
```

## What's working

Commands: 
`CoffeelibRun`: Run current buffer
`CoffeelibPlugin`: Register current buffer as a plugin

## Lib

```coffeescript

Nvim = { 
  # neovim-client API...
  # all functions can be called sync/async depending if you pass a callback 
}

# Global objects

current.buffer == Nvim.getCurrentBuffer()
current.window == ...
current.tab    == ...

# buffers: listed buffers only
buffers == Nvim.getBuffers().filter((b) -> b.listed)
windows == Nvim.getWindows()
tabs    == Nvim.getTabpages()

# Buffer properties:
buffer.number: Read-only
buffer.name:   bufname
buffer.lenght: buffer.lineCount()
buffer.listed: buffer.getOption('buflisted')
buffer.type:   buffer.getOption('buftype')
buffer.valid:  buffer.isValid()

# Option & Var access
buffer[':VARNAME'] # => buffer.getVar('VARNAME')
buffer['&OPTNAME'] # => buffer.getOption('OPTNAME')
# same goes for window & tabpage

# Cursor
cursor                          # => [line, row]
cursor[0] == cursor.line        # true
cursor[1] == cursor.row         # true
cursor = 2                      # => position [2, 0]
cursor = [10, 3]                # => position [10, 3]
cursor.row += 5                 # => position [10, 8]

cursor = current.buffer.length  # => last line

cursor += 10                # => Error
# equivalent to: cursor = [10, 8] + 10

# Functions
call.getcmdline() # => :call getcmdline()
# => returns the function result

# Other
echo()
echohl()

input('keys<esc>')
execute('wincmd w')

get('varname')
set('option', 'value') OR set('option?')

```

## Debug

In a separate terminal
Spawn a log-server: `cd $COFFEELIB_DIR & node dev/server`

```coffeescript
log.info 'hey' 
# => outputs 'hey' in terminal where log-server is running
```
