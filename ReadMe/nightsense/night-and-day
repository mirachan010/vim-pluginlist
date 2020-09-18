# night-and-day

A **vim theme scheduler**. Divide your day into as many intervals as you like, assigning each interval its own theme.

Intervals can be defined using **absolute time** (HH:MM) or **sun-relative time** (portions of day/night based on local sunrise/sunset times).

![](map.jpg)

## installation

If you don't have a preferred approach to **plugin management**, consider trying [vim-plug](https://github.com/junegunn/vim-plug), which can be installed with:

~~~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
~~~

To **install night-and-day** via vim-plug, add the following to the top of your `vimrc`:

~~~
call plug#begin('~/.vim/plugged')
Plug 'nightsense/night-and-day'
call plug#end()
~~~

Then, within vim, run `PlugUpdate`.

## configuration

Add a "nested list" containing your settings to `vimrc`, like so:

```
let g:nd_themes = [
  \ ['4:00',  'base16-default-light', 'light' ],
  \ ['11:00', 'solarized',            'light' ],
  \ ['18:00', 'solarized',            'dark'  ],
  \ ]
```

- column 1: the **start time** for each theme in `H:MM`/`HH:MM` format (valid range: `0:00`-`23:59`)
  - arrange your list in chronological order
- column 2: the **name** of each theme (as used by the vim command `colorscheme`)
- column 3: the **background state** for each theme (either `light` or `dark`)

All three columns are required for each entry in the list.

The above sample configuration, which reflects the world map image at the top of this readme, will activate:

- `base16-default-light` 4-11AM
- `solarized` (light background) 11AM-6PM
- `solarized` (dark background) 6PM-4AM

### sun-relative times

In addition to absolute times, you can set times **relative to sunrise/sunset**.

```
let g:nd_themes = [
  \ ['sunrise+0',   'base16-default-light', 'light' ],
  \ ['sunrise+1/2', 'solarized',            'light' ],
  \ ['sunset+0',    'solarized',            'dark'  ],
  \ ]
let g:nd_latitude = '50'
let g:nd_timeshift = '74'
```

- sun-relative times are specified with the prefix `sunrise+` or `sunset+`
- the `+` refers to the period following the solar event in question: the **daylight period** after sunrise, the **darkness period** after sunset
- the number after `+`, which must be either 0 or a fraction with value less than 1, denotes how far the start time should be extended into the following period

Thus, `sunrise+0` denotes the moment of sunrise, while `sunrise+1/3` denotes the moment one third into the daylight period. At `sunrise+1/2`, known as "solar noon", the sun reaches its highest point in the sky. The opposite time, `sunset+1/2`, is "solar midnight".

The above sample configuration will activate:

- `base16-default-light` from sunrise to halfway through the day (solar noon)
- `solarized` (light background) from solar noon until sunset
- `solarized` (dark background) from sunset until sunrise (the entire darkness period)

Note that the above configuration also features two new variables. The first, `g:nd_latitude`, is **mandatory** when using sun-relative time. Indeed, the presence of this variable in `vimrc` is the trigger that activates sun-relative time; in order to switch back to absolute time, simply remove it.

There are 23 permitted latitude values; choose the one nearest you.

region          | permitted values for `g:nd_latitude`
:--------------:|:-----------------------------------:
north temperate | `30` `40` `45` `50` `55` `57.5` `60` `62.5` `65`
tropics         | `-20` `-10` `0` `10` `20`
south temperate | `-65` `-62.5` `-60` `-57.5` `-55` `-50` `-45` `-40` `-30`

The second additional variable, `g:nd_timeshift`, is **optional**, though appropriate for most users. This variable specifies an offset (in minutes, positive or negative) for sunrise/sunset times to be shifted. An offset is necessary to account for one's longitudinal position within a timezone, as well as daylight saving time (if applicable).

The simplest way to determine the appropriate value for `g:nd_timeshift` is to start vim with the following configuration:

```
let g:nd_themes = [
  \ ['sunrise+0', 'default', 'light' ],
  \ ['sunset+0',  'default', 'light' ],
  \ ]
let g:nd_latitude = 'LL'
let g:nd_timeshift = '0'
```

...where `LL` is the value closest to your current latitude. Then, from the vim command line, run `:call NdSchedule()`. This will print your theme schedule, including the precise times being used for sun-relative timings.

Next, get today's exact sunrise/sunset times via an online search. (With something like "[YOUR LOCATION] sunrise sunset", Google will likely give you the information in one of those answer boxes.) Finally, set `nd_timeshift` to the appropriate value to get accurate sunrise/sunset times. Relaunch vim and run `:call NdSchedule()` again to confirm the offset.

> If your region features daylight saving time (DST) for part of the year, you can take care of the adjustment automatically by wrapping `g:nd_timeshift` in an "if statement". For instance, to activate DST for March through September:
>
> ```
> if strftime("%m") > 2 && strftime("%m") < 10
>   let g:nd_timeshift = '67'
> else
>   let g:nd_timeshift = '7'
> endif
> ```

### status line themes

To add airline themes to your schedule, activate airline support with `let g:nd_airline = 1` and add the theme names as the fourth item on each line, like so:

> Note: this example requires [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) to be installed, in addition to [vim-airline](https://github.com/vim-airline/vim-airline).

```
let g:nd_themes = [
  \ ['07:00', 'solarized', 'light', 'solarized' ],
  \ ['08:00', 'solarized', 'dark' , 'solarized' ],
  \ ]
let g:nd_airline = 1
```

For lightline themes:

> Note: this example requires [lightline.vim](https://github.com/itchyny/lightline.vim) to be installed.

```
let g:nd_themes = [
  \ ['07:00', 'base16-default-light', 'light' , 'Tomorrow' ],
  \ ['08:00', 'base16-default-dark',  'dark'  , 'Tomorrow_Night'  ],
  \ ]
let g:nd_lightline = 1
```

## notes

This plugin incorporates the [vim-colorscheme-switcher](https://github.com/xolox/vim-colorscheme-switcher) by xolox.

Map image courtesy of [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Daylight_Map,_nonscientific_(0900_UTC).jpg).

The sunrise/sunset timetables were obtained from the ["year" spreadsheet](https://www.esrl.noaa.gov/gmd/grad/solcalc/calcdetails.html) provided by the US National Oceanic & Atmospheric Administration.
