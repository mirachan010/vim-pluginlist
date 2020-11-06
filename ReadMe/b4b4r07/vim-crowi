vim-crowi
========

A simple vim plugin for [Crowi](https://github.com/crowi/crowi)

Currently supported APIs are as follows:

- `/_api/pages.create`

## Install

With [vim-plug](https://github.com/junegunn/vim-plug),

```vim
Plug 'b4b4r07/vim-crowi', { 'on': 'CrowiCreate' }
```

## Usage

Copy and paste these global variables to your `.vimrc`,

```vim
let g:crowi#api_url = "http://your.crowi.wiki"           " Change yours
let g:crowi#access_token = "abcdefghijklmnopqrstuvwxyz=" " Change yours
let g:crowi#filetypes = ['markdown']       " Limit file types that can be posted
let g:crowi#open_page = true               " If true, open the page after posting
" Defaults to expand('/user/$USER/Memo/'.strftime("%Y/%m/%d", localtime()))
let g:crowi#default_create_path = '/user/b4b4r07/memo'
let g:crowi#browser_command = 'open'       " In case of macOS
```

and then, run this command on your Vim command line:

```
:CrowiCreate
```

A Crowi page is created with the contents of the current buffer and open URL with the path in your browser!

## License

MIT

## Author

b4b4r07
