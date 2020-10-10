# lightline-solarized

A solarized color theme for lightline.vim

## Usage

1.	Make sure you've already installed [lightline.vim](https://github.com/itchyny/lightline.vim)

2.	Add this repo to your favorite vim plugin manager

	If you are using [Dein.vim](https://github.com/Shougo/dein.vim) (recommended)

	```vim
	call dein#add('taohexxx/lightline-solarized')
	```

	If you are using [NeoBundle](https://github.com/Shougo/neobundle.vim)

	```vim
	NeoBundle 'taohexxx/lightline-solarized'
	```

3.	Add this block to your init.vim (for neovim) or .vimrc (for vim)

	```vim
	" use lightline-solarized in lightline
	let g:lightline = {
		\ 'colorscheme': 'lightline_solarized',
		\ }
	```

## Customizing Colors

For example, if you want to change the color of the currently selected buffer, you can modify `autoload/lightline/colorscheme/lightline_solarized_dark.vim` and change the line `let s:p.tabline.tabsel = ...`. It defines the colors for the selected tab in tabline. In general, each palette in this file follows the following style: `let s:p.{mode}.{where} = [ [ {fg}, {bg} ] ]`.

Then run vim and execute the following lines to clear cache, if you are using [Dein.vim](https://github.com/Shougo/dein.vim).

```
:call dein#clear_state()
:call dein#update()
```

