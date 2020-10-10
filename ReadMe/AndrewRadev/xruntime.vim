[![Build Status](https://secure.travis-ci.org/AndrewRadev/xruntime.vim.png?branch=master)](http://travis-ci.org/AndrewRadev/xruntime.vim)

This is a highly experimental plugin that provides a simple form of pre-processing for vimscript files. It's mostly a fun hack, and probably nothing you can use in practice.

## Usage

Instead of using `:runtime` to evaluate a vimscript file, you use `:Xruntime`. This call should be equivalent, save for attempting to evaluate the file a bit differently if it contains certain directives.

Here's an example -- given this vimscript file:

``` vim
""" LANGUAGE InlineFunctionArguments

function Test(one, two)
  return [one, two]
endfunction
```

This is incorrect vimscript, since the `one` and `two` variables need to be prefixed by `a:`. However, the `:Xruntime` and `:Xsource` commands see the `LANGUAGE` directive at the top, generate a vimscript file out of it with the following two lines added:

``` vim
let one = a:one
let two = a:two
```

And this makes it a perfectly valid vimscript file, which is then runtime'd. You can think of it as a very limited form of "coffeescript for vimscript".

Currently, the only directive available is `InlineFunctionArguments`.

## Contributing

Pull requests are welcome, but take a look at [CONTRIBUTING.md](https://github.com/AndrewRadev/xruntime.vim/blob/master/CONTRIBUTING.md) first for some guidelines.
