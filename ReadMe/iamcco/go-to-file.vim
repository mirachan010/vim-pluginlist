## go to file for (neo)vim

example:

code:

```
var React = require('react');
```

when cursor at the line as above, type `,gf` key and then open the `node_modules/react/index.js` file

### Install

with vim-plug:

```
Plug 'iamcco/go-to-file.vim'
```

### Usage

default key mapping: `<Leader>gf`

map your own key:

```
nmap <Leader>gf <Plug>gotofile
```
