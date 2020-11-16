<img src="https://rawgithub.com/csexton/spacemanspiff.vim/master/resources/spacemanspiff.svg" />

## Why?

I am a bit obsessive about my vim startup time. Turns out that computing hundreds of colors at startup time can take a few CPU cycles. So I put together this project to pre-compile my colorscheme to nothing but simple `highlight` commands.

This is achieved by a simple `Rakefile` that will expand a bit of YAML into a template. It does the computation once so we don't do it every single time we start our editor.

## Screeshot!

![Terminal.app Screeshot](https://raw.github.com/csexton/spacemanspiff.vim/master/resources/screenshot.png)

## Install

```bash
curl https://raw.github.com/csexton/spacemanspiff.vim/master/colors/spacemanspiff.vim > ~/.vim/colors/spacemanspiff.vim
```

Or use your [favorite](https://github.com/csexton/infect) vim plugin manager by pointing it to this repo.

## Terminal?

Like [Solarized](http://ethanschoonover.com/solarized), [Tomorrow](https://github.com/chriskempson/tomorrow-theme) and [Base16](https://github.com/chriskempson/base16-vim), this requires you to change your terminal colors. Unlike those projects there is no fall back. If you don't set the terminal colors it will look pretty horrid.

Settings for iTerm can be grabbed from the [`Spaceman Spiff.itermcolors`](https://github.com/csexton/spacemanspiff.vim/blob/master/iterm2/Spaceman%20Spiff.itermcolors) directory in this repo, but other terminals you can will need to edit the preferences for your terminal. The hex values for the ANSI Colors can be found in [colors.yml](https://github.com/csexton/spacemanspiff.vim/blob/master/src/colors.yml).

![Terminal Screeshot](https://raw.github.com/csexton/spacemanspiff.vim/master/resources/terminal-preferences.png)

## Building

Edit `src/colors.yml` and run `rake` and the colorscheme will be regenerated and placed in `colors`. Feel free to modify the template or the colors yaml, but you should not edit the generated file directly.

## Benchmarks?

```
024.966: sourcing ~/.vim/colors/Tomorrow-Night.vim
005.220: sourcing ~/.vim/colors/spacemanspiff.vim
```

Times in msecs, yo.

## This looks familiar!

My colors are based off of the awesome [Tomorrow-Night](https://github.com/chriskempson/tomorrow-theme) colorscheme. I've made a few tweaks to suit my personal preference.

