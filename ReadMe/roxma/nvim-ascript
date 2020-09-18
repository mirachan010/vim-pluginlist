# NVIM-ASCRIPT

Run async python script easily without using neovim's rplugin or job feature
explicitly.

## Motivation

To be honest, I don't like neovim's `UpdateRemotePlugins`, and sometims I just
want a small fragment of python/ruby code to be run async.

## Installation

Assuming you're using [vim-plug](https://github.com/junegunn/vim-plug)

```
Plug 'roxma/nvim-ascript'
```

## Usage

```vim
python3 << EOF
def greet(name):
    import vim
    from time import time
    t = time()
    # delay for about 3s
    while t + 3 >= time():
        pass
    vim.command("echo 'hi %s'" % name)
EOF

call ascript#py3call('greet', 'roxma')
```

**Warning: Neovim's python script host uses greenlet, but it should still be
considered single-threaded. So there're chances that it will interfere with
other plugins using `:python` or `python3` feature, and then block the ui.  Be
careful with long run jobs.** 

## Functions

Recommended:

- `ascript#py3call(fn, ...)`
- `ascript#pycall(fn, ...)`

Suger missing in nvim's standard functions, note that these are not async
functions.

- `script#py3call(fn, ...)`
- `script#pycall(fn, ...)`

Others:

- `ascript#py3(script)`
- `ascript#py(script)`
- `ascript#ruby(script)`

