Set your vim theme's background based on the ambient lighting

**This plugin requires OS X, and the prebuilt binary requires OS X > 10.5**

# Method of operation

It switches the `background` variable from `light` to `dark`. Works smoothly with [solarized](http://ethanschoonover.com/solarized).

# Limitations

Vim doesn't have a timer. So this uses [a hack](http://vim.wikia.com/wiki/Timer_to_execute_commands_periodically) which only works in Normal mode.
That means the theme will switch after you exit Insert mode.

# Installing

As usual; the plugin is Pathogen-compatible.

# Configuration

`g:AmbientLightThreshold` is the sensor value which triggers the switch. The default is 100000; you can experiment yourself if you want.

`echo g:AmbientLightValue` will let you see the current value.

# Compiling the binary yourself

There's a binary that reads the light sensor value. You'll need gcc to compile it. Otherwise, it's as simple as:

    make clean; make

* * *

[Leonid Shevtsov](http://leonid.shevtsov.me)
