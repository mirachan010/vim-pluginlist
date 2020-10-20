<div>
  <h1 align="center">teleport.vim</h1>
  <p align="center">
    <a href="https://travis-ci.org/github/PsychoLlama/z.vim">
      <img align="center" alt="Travis CI Build Status" src="https://img.shields.io/travis/PsychoLlama/z.vim/master?label=Travis%20CI&style=flat-square">
    </a>
  </p>
  <p align="center">Navigate faster with <a href="https://en.wikipedia.org/wiki/Frecency">frecency</a>.<p>
</div>

## Purpose
Teleport.vim integrates with programs like [`z`](https://github.com/rupa/z)
and [`autojump`](https://github.com/wting/autojump) to provide the same
navigational magic inside Vim.

```viml
:pwd " ./projects/app-name
:Z dotf
:pwd " ~/dotfiles
```

If those programs don't sound familiar, **here's the 30-second pitch:**  
There's a competing set of command line tools that do pretty much the same
thing. They alias `cd`, remember your most common directories, and let you
jump ("teleport") to that directory by passing a substring. It'll filter the
directories by your search term and jump to the one which is most
[frecent](https://en.wikipedia.org/wiki/Frecency).

If you aren't using something like that, stop what you're doing, forget this
vim plugin, and just install the CLI tool. It's a _massive_ productivity
boost. I recommend [`zoxide`](https://github.com/ajeetdsouza/zoxide).

## Installation
[**vim-plug**](https://github.com/junegunn/vim-plug)
```viml
Plug 'PsychoLlama/teleport.vim'
```

[**Vundle**](https://github.com/VundleVim/Vundle.vim)
```viml
Plugin 'PsychoLlama/teleport.vim'
```

[**Pathogen**](https://github.com/tpope/vim-pathogen)
```sh
git clone https://github.com/PsychoLlama/teleport.vim ~/.vim/bundle/teleport.vim
```

## Integrations
`teleport.vim` is compatible with several different implementations.

### [rupa/z](https://github.com/rupa/z)
If you use the [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
framework, `teleport.vim` will work out of the box. You're good to go :rocket:

If not, you'll need to explicitly provide a path to your
[z](https://github.com/rupa/z) installation. Add this to your vimrc:

```viml
let teleport#path = expand('~/path/to/z/z.sh')
```

Where `~/path/to/z/z.sh` is replaced with the actual file path.

### [z.lua](https://github.com/skywind3000/z.lua)
There's also a lua-based implementation of `z`. Configuration is nearly
identical. Just put this in your vimrc:

```viml
let teleport#path = expand('~/path/to/z.lua/z.lua')
```

Where `~/path/to/z.lua/z.lua` is the actual file path, wherever you installed
it.

### [zoxide](https://github.com/ajeetdsouza/zoxide)
Zoxide is automatically detected - you don't have to do anything.

### [autojump](https://github.com/wting/autojump)
In order to get the `j` alias, you're probably sourcing an autojump file in
your bash/zsh/fish setup. Find that file and set it in your vimrc:
```viml
let teleport#path = expand('~/path/to/autojump.sh')
```

### Setting the integration
If you have more than one of these installed (why???) there's a chance
`teleport.vim` could choose the wrong one. You can force it to use
a particular driver by setting `teleport#driver`.

```viml
let teleport#driver = 'z' " rupa/z
let teleport#driver = 'z.lua' " skywind3000/z.lua
let teleport#driver = 'zoxide' " ajeetdsouza/zoxide
let teleport#driver = 'autojump' " wting/autojump
```

If you don't see your favorite program listed here, feel free to [open
a request!](https://github.com/PsychoLlama/teleport.vim/issues/new?title=%5BRequest%5D%20New%20Integration&body=Can%20haz%20%3Cplugin%3E%20integration%3F)

## Documentation
In traditional vim fashion, the documentation is kept in a help page.
After installing the plugin, run:

```viml
:help teleport.vim
```
