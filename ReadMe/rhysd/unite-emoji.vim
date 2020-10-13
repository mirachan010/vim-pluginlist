[unite.vim](https://github.com/Shougo/unite.vim) source for emoji :dog:
=======================================================================

This Vim plugin is a [unite.vim](https://github.com/Shougo/unite.vim) source for list of emojis which are available in GitHub.

## Installation

This plugin depends on [vim-emoji](https://github.com/junegunn/vim-emoji).  Please install it in advance.

If you use [neobundle.vim](https://github.com/Shougo/neobundle.vim), you can install by following:

```vim
NeoBundle 'junegunn/vim-emoji'
NeoBundle 'rhysd/unite-emoji.vim'
```

## Usage

```
:Unite emoji
```

![screen shot](https://raw.githubusercontent.com/rhysd/screenshots/master/unite-emoji.vim/unite_emoji.gif)

Note that:

- You can see unicode emojis in candidates only if your environment supports emoji.
- If you are Japanese, Japanese description is available by setting `g:unite#sources#emoji#enable_japanese_description` to 1.

## License

This software is distributed under [the MIT License](http://opensource.org/licenses/MIT).
