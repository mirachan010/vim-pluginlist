## elly.vim

*elly.vim* is a nostalgic and brown-based Vim color theme.

<img alt="elly.vim" src="https://user-images.githubusercontent.com/41639488/98116862-3d084780-1eec-11eb-9d3c-6937554cb285.png">

## Installation

1. Add `Plug 'ryuta69/elly.vim'` in your .vimrc within vim-plug's loading function.
2. Run `:PlugInstall`
3. Activate by `colorscheme elly`
4. Use `set termguicolors` as well

## Issues
This theme is in early development. If you find some bugs, please submit a issue. If some highlight is strange, please submit an issue with a result of a command below.

```
:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") ."> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
```

## Thanks

- [ayu-vim](https://github.com/ayu-theme/ayu-vim) - I use this theme for three years. I used the code as a reference.
- [vim-one](https://github.com/rakr/vim-one) - I used the code of airline autoload as a reference.
