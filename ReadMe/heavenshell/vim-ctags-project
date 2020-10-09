ctags_project
=============

Generate ctag's tag file by each project.

Example.

```
  project_a
     ├ .git
     ├ views.py
     └ models.py

  project_b
     ├ setup.py
     ├ views.py
     └ models.py
```

```viml
let g:ctags_project_root_files = ['.git', 'setup.py']
```

If you are in `project_a/views.py`. and execute `:CtagsProject`then generate
tags to `~/.vim/tags/py/project_a/tags`.

If you are in `project_b/views.py`. and execute `:CtagsProject`then generate
tags to `~/.vim/tags/py/project_b/tags`.
