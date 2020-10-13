```vim
" Quick look setting example for TweetVim.
" Open temporary window with 'normal! gg' and 'setl nohidden' options.
nnoremap <silent><Leader>tt
                \ :<C-u>call tmpwin#toggle(
                \     ['normal! gg', 'setl nohidden'],
                \     'TweetVimHomeTimeline')<CR>
```
