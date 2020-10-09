## next-alter.vim
This is Vim Plugin for supporting open alternate file.
For example, There are **hoge.c**.
You execute **:OpenNAlter.** then it opens **hoge.h**.
And it opens **hoge.c** when you edit **hoge.h**

So, **it can switch c <-> h, cpp <-> hpp and etc.**

In particular, when you open vim plugin file.
**It will switch "autoload/hoge.vim" <-> "plugin/hoge.vim".**


## installation
```vim
NeoBundle 'mopp/next-alter.vim'
```

## usage
Command is here.
```vim
:OpenNAlter
:OpenNAlter vertical
```

Mapping is here.
```vim
nmap <Leader>ano <Plug>(next-alter-open)
nnoremap <expr> <Leader>anb next_alter#open_mapexpr('vertical botright')
nnoremap <expr> <Leader>ant next_alter#open_mapexpr('vertical topleft')
```

## setting
This is default values below.
```vim
" key is file extension, value is alternate file extension.
let g:next_alter#pair_extension = {
            \ 'c'   : [ 'h' ],
            \ 'C'   : [ 'H' ],
            \ 'cc'  : [ 'h' ],
            \ 'CC'  : [ 'H', 'h'],
            \ 'cpp' : [ 'h', 'hpp' ],
            \ 'CPP' : [ 'H', 'HPP' ],
            \ 'cxx' : [ 'h', 'hpp' ],
            \ 'CXX' : [ 'H', 'HPP' ],
            \ 'h'   : [ 'c', 'cpp', 'cxx' ],
            \ 'H'   : [ 'C', 'CPP', 'CXX' ],
            \ 'hpp' : [ 'cpp', 'cxx'],
            \ 'HPP' : [ 'CPP', 'CXX'],
            \ }

" this list shows search directory to find alternate file.
let g:next_alter#search_dir = [ '.' , '..', './include', '../include' ]

" this is used when it opens alternate file buffer.
let g:next_alter#open_option = 'vertical topleft'
```

## screenshot
![SS](./ss.gif)
