vim-insert-point
===
cursor move on insert mode!

example
===
.vimrc
---
```VimL
imap <Tab> <Plug>(insert_point_next_point)
imap <S-Tab> <Plug>(insert_point_prev_point)
smap <Tab> <Plug>(inserst_point_next_point_select)
smap <S-Tab> <Plug>(inserst_point_prev_point_select)
```

case1: default settings.
---
your cursor on <strong>|</strong>. (language is javascript)
```javascript
var func = function (arg1, arg2|) {
  return { key1: 'value1', key2: 'value2' }
}
```

you type <strong>&lt;Tab&gt;</strong>.
move cursor at the next point.
```javascript
var func = function (arg1, arg2)| {
  return { key1: 'value1', key2: 'value2' }
}
```

you type <strong>&lt;Tab&gt;</strong> again.
```javascript
var func = function (arg1, arg2) {|
  return { key1: 'value1', key2: 'value2' }
}
```

you type <strong>&lt;Tab&gt;</strong> again.
move cursor and selection <strong>value1</strong>.
```javascript
var func = function (arg1, arg2) {
  return { key1: '|value1', key2: 'value2' }
}
```

case2: html settings.
---
your cursor on <strong>|</strong>. (language is html)
```html
<d|iv id="id-value1">
    <a class="class-value1" href="https://github.com/hrsh7th/vim-insert-point">
        <span>text1</span>
    </a>
</div>
```

you type <strong>&lt;Tab&gt;</strong>.
move cursor and selection <strong>id</strong>.
```html
<div |id="id-value1">
    <a class="class-value1" href="https://github.com/hrsh7th/vim-insert-point">
        <span>text1</span>
    </a>
</div>
```

you type <strong>&lt;Tab&gt;</strong>.
move cursor and selection <strong>id-value1</strong>.
```html
<div id="|id-value1">
    <a class="class-value1" href="https://github.com/hrsh7th/vim-insert-point">
        <span>text1</span>
    </a>
</div>
```

you type <strong>&lt;Tab&gt;</strong>.
```html
<div id="id-value1">|
    <a class="class-value1" href="https://github.com/hrsh7th/vim-insert-point">
        <span>text1</span>
    </a>
</div>
```

you type <strong>&lt;Tab&gt;</strong>.
move cursor and selection <strong>class</strong>.
```html
<div id="id-value1">
    <a |class="class-value1" href="https://github.com/hrsh7th/vim-insert-point">
        <span>text1</span>
    </a>
</div>
```

