:high_brightness: vital-vim-syntax-echo
=======================================
![https://gyazo.com/d5fab36f479ea0fb521ce75b4641a059](https://i.gyazo.com/d5fab36f479ea0fb521ce75b4641a059.png)

### Example

```vim
let s:V = vital#of('vital')
let s:SyntaxEcho = s:V.import('Vim.SyntaxEcho')

let s:lines = [
\   'echo "===SyntaxEcho==="',
\   'for line in s:lines',
\   '  call s:SyntaxEcho.echo(line)',
\   'endfor',
\ ]

echo '===SyntaxEcho==='
let i = 1
for line in s:lines
  echo printf('line %d: ', i)
  call s:SyntaxEcho.echon(line)
  let i += 1
endfor
```
