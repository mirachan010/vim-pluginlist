Option Parser for Vim Commands
============================

[![Build Status](https://travis-ci.org/rhysd/vim-optparse.png?branch=master)](https://travis-ci.org/rhysd/vim-optparse)

This is an option parser library for Vim script. It can parse `--key=VALUE` arguments and command options such as `<count>`, `<bang>` and so on.
Now, this library is included in [vital.vim](https://github.com/vim-jp/vital.vim).  I recommend using it because
there are other useful libraries in it.

## Usage

At first, make new instnce of a parser with `optparse#new()`, then define options you want to parse with `on({definition}, {description} [, {extra}])` funcref.  At last, define command with `parse({args}, [{count}, {bang}, {reg}, {range}])`.  Note that you must use `<q-args>` for `{args}`, `<count>` for `{count}`, `<q-bang>` for `{bang}` and `[<line1>, <line2>]` for `{range}`.  This library's interface is inspired by `OptionParser` in Ruby.

## Example

```vim
" make option parser instance
let s:opt = optparse#new()

" user-defined option completion (see :help :command-completion-customlist)
"   Note: optlead is *NOT* arglead (when '--baz=h', 'h' is optlead.)
function! CompleteBazOption(optlead)
    return filter(['sushi', 'yakiniku', 'yakitori'], 'v:val =~# a:optlead')
endfunction

" define options
call s:opt.on('--hoge=VALUE', 'description of hoge, must have value')
call s:opt.on('--foo', 'description of foo')
" Note: definitions can chain
call s:opt.on('--[no-]bar', 'description of bar, deniable', {'completion' : 'file'})
         \.on('--baz', 'description of baz, has short option',
                 \ {'short' : '-b', 'completion' : function('CompleteBazOption')})
         \.on('--qux', 'description of qux, defaults to "aaa"', {'default' : 'aaa'})

" set complete function for unknown options
let s:opt.unknown_options_completion = 'file'

" prepare for a completion function
function! CompleteHoge(arglead, cmdline, cursorpos)
    return s:opt.complete(a:arglead, a:cmdline, a:cursorpos)
endfunction

" define command with the parser
command! -nargs=* -count -bang -complete=customlist,CompleteHoge Hoge echo s:opt.parse(<q-args>, <count>, <q-bang>)

" execute!
Hoge! --hoge=huga --no-bar poyo -b
" => {
"      '__count__' : 0,
"      '__bang__' : '!',
"      'hoge' : 'huga',
"      'bar' : 0,
"      'baz' : 1,
"      'qux' : 'aaa',
"      '__unknown_args__' : ['poyo'],
"    }

" show help
Hoge --help
" echo following message
"   Options:
"     --hoge=VALUE : description of hoge, must have value
"     --foo        : description of foo
"     --[no-]bar   : description of bar, deniable
"     --baz, -b    : description of baz, has short option
"     --qux        : description of qux, defaults to "aaa" (DEFAULT: 'aaa')
"
" => {
"      '__count__' : 0,
"      'help' : 1,
"    }
```

## Installation

### Install vim-optparse as Stand Alone Plugin

Install vim-optparse as stand alone plugin and use `optparse#new()`.

### Embed vim-optparse in Your Plugin

Copy `autoload/*` to `autoload/your_plugin/`.

```
$ cp optparse/autoload/optparse.vim -> your_plugin/autoload/your_plugin/optparse.vim
$ cp -r optparse/autoload/optparse -> your_plugin/autoload/your_plugin/
```

And use `your_plugin#optparse#new()`.

If you embed vim-optparse, __be care about license below__. Please do not forget to add copyright notice in your plugin.

## TODO

- completefunc generation
- allow empty value (--name=)

## License

Copyright (c) 2013-2014 rhysd [MIT License](http://opensource.org/licenses/MIT).
