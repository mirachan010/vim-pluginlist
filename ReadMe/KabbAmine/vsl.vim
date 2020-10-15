VSL for Vim Simple Library <small>v0.2</small>
=============================================

Description
-----------

A simple vim library with some useful functions sorted by categories.

```
autoload/vsl/
├── color/
│   └── convert.vim
├── colorscheme/
│   └── lib.vim
├── general/
│   └── lib.vim
└── type/
    ├── list.vim
    └── string.vim
```

Examples of use
-----------

### General

```
" Open default terminal with the current vim directory (`pwd`)
	call vsl#general#lib#OpenTerm()

" Open default terminal with the current vim file directory
	call vsl#general#lib#OpenTerm(expand('%:h:p'))

" Open default file manager with the current vim directory (`pwd`)
	call vsl#general#lib#OpenFM()

" Open default file manager with the current vim file directory
	call vsl#general#lib#OpenFM(expand('%:h:p'))
```
### Data type

```
" Make 1st string letter uppercase
	call vsl#type#string#First2Upp('foo')		" => 'Foo'

" Remove duplicates from given list (Doesn't sort returned list)
	call vsl#type#list#RemoveDuplicates([1, 2, 1, 1, 3, 2]))		" => [1, 3, 2]
```

### Colors

```
" Convert given rgb color to a hexadecimal one
	call vsl#color#convert#Rgb2Hex('255, 0, 255')		=> '#FF00FF'

" Get html base color name from given hex color
	call vsl#color#convert#Hex2Lit('#D2691E')		=> 'chocolate'
```

TODO
-----

- :white_medium_square: Add documentation.
- :white_medium_square: Better namespaces.
