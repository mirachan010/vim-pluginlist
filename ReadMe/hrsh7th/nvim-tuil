# nvim-tuil

nvim plugin utilities that can be embed.

# Embed

You must install `nvim-tuil` on your environment.
Then you can use `TuilEmbed` command in nvim.

`TuilEmbed` command will ask you 2 options.

1. target-dir
The embed target directory.

2. namespace
Tye embed target namespace.

If you choose target-dir as `/path/to/telescope` and namespace as `telescope`.
`TuilEmbed` will create the following structure.

```
  /path
    /to
      /telescope
        /lua
          /telescope
            /tuil
              ... some embedded files ...
```



# Modules

#### %name%.tuil.oop.class (stable)

Simple OOP utility.

```lua
local Class = require'%name%.tuil.oop.class'
local Emitter = require'%name%.tuil.event.emitter'

local Person = Class(Emitter)

function Person.init(self, first_name, last_name)
  SomeClass.super.init(self)

  self.first_name = first_name
  self.last_name = last_name
end

function Person.greet(self, text)
  SomeClass.super.method(self, text .. '...')
  self:emit('greet')
end

return Person

-- local person = Person.new('hrsh', '7th')
-- person:greet('hello')
```

#### %name%.tuil.event.emitter (stable)

Simple EventEmitter utility.

```lua
local Emitter = require'%name.tuil.event.emitter'

local emitter = Emitter.new()
emitter:on('greet', function(payload)
  print(payload)
end)
emitter:emit('greet')
```

#### %name%.tuil.vim.autocmd (experimental)

Vim's autocmd emitter.

```lua
local Autocmd = require'%name%.tuil.vim.autocmd'

Autocmd:on('BufEnter', function()
  print('BufEnter')
end)
```

#### %name%.tuil.vim.window (experimental)

Declarative window mangement.

*NOTE: This example doesn't work yet.*

```lua
local Window = require'%name%.tuil.vim.window'

local win = Window.new({
  buf = vim.api.nvim_create_buf(false, true);
  style = {
    highlight = 'CursorLine:NormalFloat'
    width = '100%';
    height = '100%';
    row = 0;
    col = 1;
  };
  children = {
    Window.new({
      buf = vim.api.nvim_create_buf(false, true);
      style = {
        highlight = 'CursorLine:NormalFloat'
        width = '60%';
        height = '60%';
        row = '20%';
        col = '20%';
      };
    })
  };
})
win:open(Window.screen())
```

