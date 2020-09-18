# python\_tools

This plugin provides some tools for working with Python code. This plugin
is only supported in Vim 8 and onwards.

## Classes and functions in the statusline

This plugin can return a string for displaying the currently focused Python
class, method, or function in the status line. To integrate this into
vim-airline, you can use the following, for example:

```vim
let g:airline_section_y = '%{python_tools#statusline#GetStatus()}'
```

## Running py.test on files

Two plug commands are available for running py.test on classes or methods
you are looking at: `<Plug>(python_tools_pytest_class)` and
`<Plug>(python_tools_pytest_function)`. They will allow you
to run an entire class of tests, or just one method or function. You
can create easy keybindings for them in a Python ftplugin file.

```vim
map <buffer> <C-y> <Plug>(python_tools_pytest_class)
```

If you want to reuse the existing test database, use
`<Plug>(python_tools_pytest_class_reuse_db)` or
`<Plug>(python_tools_pytest_function_reuse_db)` instead.

If you are using Django and the relevant plugins for your project, you can
enable an argument to disable migrations:

```vim
" Don't apply migrations when running tests.
let g:python_tools_pytest_no_migrations = 1
```

Errors should appear in a new split window, which can be closed with the 'q',
'Ctrl+C', or Escape keybindings. When the buffer for the test results is
closed, the py.test execution will automatically be halted.
