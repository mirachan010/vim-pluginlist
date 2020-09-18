# filetype cmake vim plugin

    NeoBundle 'ujihisa/ft-cmake'

## Assumptions

You have `indent/cmake.vim` and `syntax/cmake.vim`, and also when you edit `CMakeLists.txt` the `&filetype` is `"cmake"`.

## Usage

`<C-x><C-k>` in insert mode to use dictionary completion (Vim's builtin feature.)

## References

Keywords in `dict/cmake.vim` are from <http://www.cmake.org/Wiki/CMake_Useful_Variables>

## Technical details

* `dict/cmake.txt`

```ruby
require 'nokogiri'
require 'open-uri'

x = open('http://www.cmake.org/Wiki/CMake_Useful_Variables').read
n = Nokogiri::HTML(x)
puts (n / 'dt').map(&:text).map(&:strip).sort
```

and some manual tweaks

## License

GPLv3 or any later version.
