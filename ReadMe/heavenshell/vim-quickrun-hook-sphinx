Quickrun hook for Sphinx build
==============================

QuickRun hook for enable to build Sphinx

Install
-------

Install the distributed files into Vim runtime directory which is usually
~/.vim/, or $HOME/vimfiles on Windows.

If you install pathogen that provided from Tim Pope, you should extract the
file into 'bundle' directory.

Usage
-----

1. Add below example QuickRun config to your `.vimrc` or `_vimrc`.
2. Open your reStructured file.
3. Run QuickRun.
4. QuickRun would execute `sphninx-build -b html -d /path/to/build/doctrees /path/to/source /path/to/build` and build.


Example QuickRun configs
------------------------

```viml
let g:quickrun_config = {}
let g:quickrun_config['rst'] = {'command': 'sphinx-build', 'hook/sphinx/enable': 1, 'cmdopt': '-b html'}
```
