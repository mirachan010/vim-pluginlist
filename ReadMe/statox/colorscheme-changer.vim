# colorscheme-changer.vim

Change your colorscheme depending on the hour of the day

# What is it?

This plugin allows you to change your colorscheme depending on the time of the
day without having to restart Vim or resource your `.vimrc`.

Simply define when the daily colorscheme should be used, when the nigthly
colorscheme should be used and which colorschemes they are and you are good to
go!

I don't really use this feature (I love a consistent dev environment) but it was
inspired by [this SO question](https://vi.stackexchange.com/q/13660/1841) and I
thought it was a good occasion to play with vim8 jobs and triggers.

# Prerequisite

You will need `vim8+` with the options `+job` and `+timer` compiled.

# Installation

You can install this plugin with any decent plugin manager. For example with
[vim-plug](https://github.com/junegunn/vim-plug) simply add this to your
`.vimrc`:

    Plug 'statox/colorscheme-changer.vim'

And then run `Plug-Install`.

If you want to use a colorscheme which isn't built-in you will have to install
it. You can check that it is properly installed with the command:

    colorscheme [your-colorscheme]

If the command fails, this plugin will also fail.

# Configuration

This plugin exposes several variables that can be used to customize its behavior.
You can define each of these variables in your `.vimrc`, if you don't the plugin
will use default values.

## Disable the plugin

If you want to keep colorscheme-changer.vim install but disable it so that your
colorscheme will not be changed you can add the following line to your `.vimrc`:

    let g:colorschemeChangerLoaded = 1

## Customize hours

`g:daytime` defines the hour which will trigger the daily colorscheme and
`g:nightTime` the hour which will trigger the nightly one.

Both of these variable must be lists representing an hour in the 24h format `[HH,
MM, SS]`

    let g:dayTime    = [8, 0, 0]    " Default 9:30:00 am
    let g:nightTime  = [19, 45, 0]  " Default 6:30:00 pm

## Customize colorschemes

`g:dayColorscheme` and `g:nightColorscheme` define the colorschemes to use by
day and night

    let g:dayColorscheme    = 'desert'  " Default blue
    let g:nightColorscheme  = 'delek'   " Default darkblue

# I found a bug!

Feel free to open an issue
[here](https://github.com/statox/colorscheme-changer.vim/issues)
