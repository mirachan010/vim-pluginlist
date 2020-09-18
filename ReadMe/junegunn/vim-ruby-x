vim-ruby-x
==========

`:RubyX` command extends Ruby interface of Vim, making it (marginally) easier to use.

Installation
------------

Use your favorite plugin manager.

- [vim-plug](https://github.com/junegunn/vim-plug)
  1. Add `Plug 'junegunn/vim-ruby-x'` to .vimrc
  2. Run `:PlugInstall`

Features
--------

### Easier variable access

- `VIM[]`
- `VIM[]=`
- `VIM.exists?(varname)`
- `VIM.fetch(varname, default)`
- `VIM.unlet(*varnames)`

```ruby
var1 = VIM['g:var1']
var2 = VIM['g:var2'] || 0

VIM['g:vars'] = { :vars => [var1, var2], :sum => var1 + var2 }

VIM.unlet 'g:var1', 'g:var2'
```

### Shortcuts to VIM::command and VIM::evaluate

- `String#vim!`
- `String#vim?`

```ruby
'redraw!'.vim!
count = 'len(g:array)'.vim?
```

### Executing normal mode commands

```ruby
VIM.normal  'gqip'
VIM.normal! 'gg=G'
```

### Vimscript representation of Ruby values

- `Object#to_v`

```ruby
'hello world'.to_v
  # "hello world"

[1, 2, 3, %w[hello world], { 'hello' => { 'world' => '!' } }].to_v
  # [1, 2, 3, ["hello", "world"], {"hello": {"world": "!"}}]
```

### Calling Vim functions

- `VIM.call(name, *args)`

```ruby
VIM.call(:feedkeys, "\C-c")
```

### Making Ruby code interruptible with CTRL-C

```ruby
VIM.interruptible do
  begin
    sleep
  rescue Interrupt
    puts 'Interrupted!'
  end
end
```

### Messages

```ruby
VIM.echo    'Welcome'
VIM.echo    'Apples', :Identifier, ' are ', :Structure, 'red', :Error
VIM.error   'Oops, try again'
VIM.message 'This one is builtin'
```
