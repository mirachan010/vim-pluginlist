# jo.vim
This is vim plugin to create JSON objects more easily
that's like [jpmens/jo](https://github.com/jpmens/jo) or [skanehira/gjo](https://github.com/skanehira/gjo)

## Installation
e.g. dein.vim

```toml
[[plugins]]
repo = 'skanehira/jo.vim'
```

## Usage
You can input `key=value` and using `<C-j>` that's will be generate json.

e.g.

```
" befoer
name=gorilla age=26

" after
{"age":26,"name":"gorilla"}
```

## Author
skanehira
