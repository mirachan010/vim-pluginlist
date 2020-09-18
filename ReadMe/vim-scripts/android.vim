# Android Development for Vim

[Vim](http://www.vim.org) is a kickass text editor turned IDE (with the right plug-ins). 
[Android](http://www.android.com) is an awesome mobile operating system that's 
open and plainly rocks. *Why not put these two together?*

[`android.vim`](https://github.com/jalcine/android-dev.vim/tree/v0.2.0) is a Vim plugin
that allows you to build your Android application on the command line and 
within Vim. The plug-in is written purely in VimL for portability.

## Requirements
> **NOTE**: This plugin has ONLY been tested on a bleeding edge version of Vim 
> 7.3 with `--features=huge`. Please report any problems you encounter with 
> version information and compilation options included.

At the time of writing, there isn't any language dependencies but it does 
require on the following applications (they're checked for):

  + [Ant](http://ant.apache.org) is used a lot to handle most of the building 
    tasks. We ❤ you!

  + [Android SDK](http://developer.android.com/sdk/index.html) 
    have to be not only on your system, but discoverable in your $PATH.

## Installing
I recommending using [Vundle](http://github.com/gmarik/vundle) to install 
plugins. The line necessary to add this plugin is as follows:

```viml
Bundle 'jalcine/android.vim'
```

## Commands
All of the methods for the plug-in are defined with `Android` as the leading 
prefix. Check `:help android-commands` for information.

## Options
Extensibility is what we love and one of the more popular philosophies out 
there. The following are a list of recommended options to be set after 
installing this plugin. Check `:help android-options` for more information.

## Templating
In order to encourage quicker development, `android.vim` incorporates the
ability to handle templating for projects. Check `:help android-templating`
for more information.

## License
This plugin is licensed under the MIT license. Make it work, people!

## Author
I'm [Jacky Alcine](http://jalcine.me) and I love code and chatting. Find me on 
[Twitter](https://twitter.com/jackyalcine) or `jalcine` on Freenode!
