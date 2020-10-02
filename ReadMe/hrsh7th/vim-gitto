# vim-gitto
git client in vim.

## API

### gitto#run(feature, [...args]) -> results
You can call feature like this.

```
call gitto#run('status#get')
call gitto#run('status#reset', '/path/to/file')
```

### gitto#run_in_dir(dir, feature, [...args]) -> results
You can call feature like this.

```
call gitto#run_in_dir(dir, 'status#get')
call gitto#run_in_dir(dir, 'status#reset', '/path/to/file')
```

### gitto#view#commit(paths)
### gitto#view#commit_in_dir(dir, paths)
You can open commit view in other tabpage.

```
call gitto#view#commit(['/path/to/commit1', '/path/to/commit2'])
```

### gitto#view#diff_file_with_hash(path, info)
### gitto#view#diff_file_with_hash_in_dir(dir, path, info)
You can open vimdiff view in other tabpage.

> `info` is `{ hash: string; path: string }`

```
call gitto#view#diff_file_with_hash('/path/to/diff', { 'hash': 'HEAD', 'path': '/path/to/diff' })
```

### gitto#view#diff_hash_with_hash(info1, info2)
### gitto#view#diff_hash_with_hash_in_dir(dir, info1, info2)
You can open vimdiff view in other tabpage.

> `info` is `{ hash: string; path: string }`

```
call gitto#view#diff_hash_with_hash({ 'hash': 'HEAD', 'path': '/path/to/diff' }, { 'hash': 'HEAD^', 'path': '/path/to/diff' })
```

## Feature

### status#get() -> { status, path, raw }[]
`git status`

### status#reset(paths) -> void
`git reset -- path`

### status#checkout(paths) -> void
`git checkout -- path`


### status#add(paths) -> void
`git add -- path`

### status#rm(paths) -> void
`git rm -- path`

... and more.

You can find other feature in `autoload/gitto/git/*.vim`.

# FAQ

Q.
> I want to use this on `special plugin's buffer`. But it's not work.

A.
> You can override implementaion for detect git repo like this.
```
let g:gitto#config = {}
function! g:gitto#config.get_buffer_path()
  if exists('b:defx')
    return b:defx.paths[0]
  endif
  return expand('%:p')
endfunction
```
# TODO
- implements more feature.
- error handling?

