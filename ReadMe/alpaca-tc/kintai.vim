# Kintai.vim

I want to send report of the attendance **by using VIM**.

## Command

`:CreateKintai`

## Configuration Example

```vim
let g:kintai#configuration = {
  \ 'url' : 'http://kintai.com/report.php',
  \ 'body' : "# 本日の予定\n",
  \ }
```

**My configuration**

```vim
function! s:at_morning()
  let hours = str2nr(strftime("%H"))
  if hours < 12
    return 1
  else
    return 0
  endif
endfunction"

let g:kintai#configuration = {}

function! g:kintai#configuration.url()
  if s:at_morning()
    return 'http://report.office/...'
  else
    return 'http://report.office/...'
  end
endfunction

function! g:kintai#configuration.body()
  if s:at_morning()
    return  "■本日の予定\n○大項目\n・詳細の説明\n○大項目\n・詳細の説明\n○大項目\n・詳細の説明\n"
  else
    return  "■業務内容\n○大項目\n・詳細の説明\n■明日やること\n○大項目\n・詳細の説明\n■やり残していること\n○大項目\n・詳細の説明\n■一言"
  end
endfunction
```
