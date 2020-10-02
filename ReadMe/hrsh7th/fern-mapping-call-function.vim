# fern-mapping-call-function

The fern plugin to call your custom function.

# Warning
This plugin publish fern's internal object.
You should care about of the fern update.

# Usage

```viml

" Add your custom function to mapping.
function! s:fern_project_top(helper) abort
  let l:node = a:helper.sync.get_current_node()
  let l:proj = s:detect_project_root(l:node._path)
  execute printf('Fern %s', fnameescape(l:proj))
endfunction
call fern#mapping#call_function#add('project_top', function('s:fern_project_top'))

autocmd! vimrc FileType fern call s:setup_fern()
function! s:setup_fern() abort

  " Map to your custom function.
  nmap <silent><buffer><Tab> <Plug>(fern-action-call-function:project_top)

endfunction

```
