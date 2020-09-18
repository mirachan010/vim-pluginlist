# vim-left-pad

String padding library

## Usage

```vim
scriptencoding utf-8

function! TestLeftPad()
  call assert_equal(leftpad#Pad("あ", 5), "   あ")
  call assert_equal(leftpad#Pad("あ", 5, "い"), "い あ")
  call assert_equal(leftpad#Pad("あ", 4, "い"), "いあ")
  call assert_equal(leftpad#Pad("あ", -5), "あ   ")
  call assert_equal(leftpad#Pad("あ", -5, "い"), "あい ")
  call assert_equal(leftpad#Pad("あ", -4, "い"), "あい")
  call assert_equal(leftpad#Pad("a", -4, "い"), "aい ")
endfunction
```

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a mattn)
