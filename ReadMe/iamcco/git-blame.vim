#### Usage

> get blame info of the current buffer

function: `git_blame#get_lines_blame`

```vim
" get blame of current line
echo git_blame#get_lines_blame()
" output
['00000000 (Not Committed Yet 2018-01-12 17:17:36 +0800 20)']

" get blame by line number
echo git_blame#get_lines_blame(line_number)
" output
['00000000 (Not Committed Yet 2018-01-12 17:17:36 +0800 20)']

" get blame by range
echo git_blame#get_lines_blame(start_line, end_line)
['^bbae2c1 (guangzhou.chen    2018-01-12 16:02:46 +0800 1) ### git-blame.vim', '00000000 (Not Committed Yet 2018-01-12 17:19:11 +0800 2)']
```

function: `git_blame#get_lines_blame_parse`

> same with `git_blame#get_lines_blame` but with different result

```vim
" get blame of current line
echo git_blame#get_lines_blame()
" output
{'status': v:true, 'date': '2018-01-12', 'user': 'Not Committed Yet', 'time': '17:29:15', 'input': '00000000 (Not Committed Yet 2018-01-12 17:29:15 +0800 35) {''status'': v:false, ''input'': ''fatal: file README.md has only 23 lines''}', 'commit': '00000000 '}
```

**get blame of file**

```vim
echo git_blame#get_blame(start_line, end_line, file_path)
```

**parse blame info**
```vim
echo git_blame#parse_blame('00000000 (Not Committed Yet 2018-01-12 17:17:36 +0800 20)')
" output
{'status': v:true, 'date': '2018-01-12', 'user': 'Not Committed Yet', 'time': '17:30:52', 'input': '00000000 (Not Committed Yet 2018-01-12 17:30:52 +0800 20) [''00000000 (Not Committed Yet 2018-01-12 17:17:36 +0800 20)'']', 'commit': '00000000 '}
```
