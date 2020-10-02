# vim-locon
local config in your vimrc.

# usage

1. define your overridden config.
```viml
" filename: .vimrc or init.vim

call locon#def('ignore_globs', ['.*/', '.git/', '.svn/', 'node_modules/'])

if filereadable(expand('$HOME/.localconfig.vim'))
  execute printf('source %s', expand('$HOME/.localconfig.vim'))
endif
```

2. override some config
```viml
" filename: .localconfig.vim

call locon#set('ignore_globs', { default -> default + ['your_project_specific_ignore_glob'] })
```

3. use config
```viml
" filename: .vimrc or init.vim

call denite#custom#filter('matcher/ignore_globs', 'ignore_globs', locon#get('ignore_globs'))
```
