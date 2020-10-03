endtagcomment.vim
=================

Forked from @hokaccha's https://gist.github.com/hokaccha/411828

Introduction
------------

### Before
```html
<div id="hoge" class="fuga">
...
</div>
```

### After
```html
<div id="hoge" class="fuga">
...
</div><!-- /div#hoge.fuga -->
```

Usage
-----
```vim
nmap ,t <Plug>(endtagcomment)
```

Install
-------
```vim
NeoBundle 'haya14busa/endtagcomment.vim'
```

```vim
NeoBundleLazy 'haya14busa/endtagcomment.vim', {
\   'autoload' : {
\     'mappings' : ['<Plug>(endtagcomment'],
\   }
\ }
```
