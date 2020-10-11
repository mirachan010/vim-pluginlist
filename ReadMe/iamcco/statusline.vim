# statusline.vim

You should build your own custom status line instead of
using any plugin like airline and lightline

![image](https://user-images.githubusercontent.com/5492542/73464182-75a54e80-43b9-11ea-8505-42713178aa33.png)

## Docs of status line

Status line item format `%-0{minwid}.{maxwid}{item}`

`:h statusline`

## Highlight Section content

- `%1*...%*`:
  - highlight content `...`
  - `1` means highlight group `User1`
    > `h hl-user` for more information about the highlight group
- `%#groupName#...%*`:
  - use highlight group `groupName`

### Highlight Example

highlight full path with white and black color

``` vim
" defined User1 highlight group
highlight User1 guibg=#ffffff guifg=#000000
" defined ExampleBlock highlight group
highlight ExampleBlock guibg=#000000 guifg=#ffffff
set statusline=%1*%F%*%#ExampleBlock#%F%*
```

Select above code in (neo)vim and `:@"` you will see as below screenshot

![image](https://user-images.githubusercontent.com/5492542/73370877-dc5e3580-42ef-11ea-8975-16b6289b9025.png)

## Separate status line to left and right parts

Use `%=` item:

``` vim
" defined User1 highlight group
highlight User1 guibg=#ffffff guifg=#000000
" defined ExampleBlock highlight group
highlight ExampleBlock guibg=#000000 guifg=#ffffff
set statusline=%1*%f%*%=%#ExampleBlock#%f%*
```

Select above code in (neo)vim and `:@"` you will see as below screenshot

![image](https://user-images.githubusercontent.com/5492542/73463600-7ee1eb80-43b8-11ea-9cd4-2839eb5a324f.png)

### Auto setup status line

Autocmd event to setup active line

- VimEnter
- WinEnter
- BufDelete
- BufNew
- BufNewFile
- FileType
- TabNewEntered
- CursorHold

For deactive line

- WinLeave

``` vim
augroup StatuslineAug
  autocmd!
  autocmd VimEnter,WinEnter,BufDelete,FileType * call Statusline_update('active')
  autocmd WinLeave * call Statusline_update('deactive')
augroup END
```
