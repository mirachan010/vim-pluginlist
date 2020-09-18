# LGS.vim

Adds integration with [Laravel 4 Generator bundle](https://github.com/JeffreyWay/Laravel-4-Generators) through LG command allowing user to generate various entities w/o leaving VIM. Convinient navigation through generated/updated files included. This is a very early release, please file bugs if you find any.

## Installation

If you're using Pathogen.vim, Vundle or similar software consult their documentation. In case if you're using plain VIM just throw contents of this repository to `~/.vim` directory (or ~/_vim Win32 users).

## Usage

LGS.vim provides one single command for invoking generators: `LG`

Examples:

```
" Generates NewModel
LG model NewModel

" Generates controller Controller
LG controller MyController

" Will insert form for model Model into current buffer at cursor position
LG form NewModel

" You can also specify options for generators

LG form --method=create --html=ul ModelName

" Syntax with = is supported too
LG controller --path=/path/to/template ControllerName
```

See documentation for more details.

## Known issues

First of all current discovery of models is very basic and fragile. It is a piece of code executed in `artisan ticker` console. You can find it in `misc/get_models.php`.

Environment discovery is very dumb: mock `Application` class, load `bootstrap/start.php` catch `detectEnvironment`. In case if `detectEnvironment` is called after some work with `Application` instance it'll just crash and you won't get any completion.
