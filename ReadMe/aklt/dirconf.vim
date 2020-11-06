# dirconf.vim

This vim plugin is for maintaining project specific configuration and keeping
notes associated with the project.  The configuration and notes are kept
outside of the project source directory.

I created this plugin because I wanted to change settings between different
projects I am working on that use different plugin settings and be able to
work on these projects in the same vim instance.

For example:

One project uses `eslint` with a specific configuration, while another project
uses `eslint` with a different configuration.

One of these projects uses `tern` for JS completion, where another uses
`vim-flow` completion.

With this plugin I am able to work on these projects within the same vim
instance using something like the following context files:

One for running `eslint` and `flow`:

```vimL
let g:javascript_plugin_flow = 1

" Source the file to define flowcomplete#Complete
if ! exists('*flowcomplete#Complete')
  let g:tern_disable = 1
  let g:flow#flowpath = a:dir . '/node_modules/.bin/flow'
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:neomake_javascript_eslint_args = ' --config ' . $HOME . '/.eslintrc-react'
  source ~/.vim/bundle/vim-flow/autoload/flowcomplete.vim
endif

set omnifunc=flowcomplete#Complete
```

Another dirconf context file for running `eslint` and `ternjs` for completion:

```vimL
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = a:dir . '/node_modules/.bin/eslint'
let g:neomake_javascript_eslint_args = ' --config ' . $HOME . '/.eslintrc-backend'
let g:tern_show_argument_hints = 1
let g:tern_show_signature_in_pum = 1
```

