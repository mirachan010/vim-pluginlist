# *Map To Side Effects*, *Vim* plugin

This plugin helps to fool *Vim* into mapping key sequences in *Normal*,
*Visual/Select*, and *Operator-pending* modes to function side effects.

> "All problems in computer science can be solved by another level
> of indirection."

-- a quote believed by Diomidis Spinellis to be attributed to
Butler Lampson, who attributes it to David Wheeler,
[according to Internet](
  http://www.dmst.aueb.gr/dds/pubs/inbook/beautiful_code/html/Spi07g.html).

## User interface (API)

This plugins supports 4 *kinds* of *actions*:

* `Idempotent` -- actions that take no arguments and cannot be
  meaningfully repeated more than once,
* `Repeatable` -- actions that take no arguments but can be
  meaningfully repeated a number of times,
* `WithCount`  -- actions that take a `count`-type argument,
* `WithCount1` -- actions that take a `count1`-type argument.

*Action* here means a *VimL* function called for its side effects.

### Registering actions and creating mappings

The following functions create mappings of a key sequence of the form
`<Plug>(<name>)` to the side effects of the given action in requested
modes.

* `mapToSideEffects#SetUpIdempotent(action[, options])`
  -- set up a mapping of a key sequence of the form `<Plug>(<name>)` to
  the side effects of a user provided `Idempotent` action, return the
  generated ID number,

* `mapToSideEffects#SetUpRepeatable(action[, options])`
  -- set up a mapping of a key sequence of the form `<Plug>(<name>)` to
  the side effects of a user provided `Repeatable` action, return the
  generated ID number,

* `mapToSideEffects#SetUpWithCount(action[, options])`
  -- set up a mapping of a key sequence of the form `<Plug>(<name>)` to
  the side effects of a user provided `WithCount` action, return the
  generated ID number,

* `mapToSideEffects#SetUpWithCount1(action[, options])`
  -- set up a mapping of a key sequence of the form `<Plug>(<name>)` to
  the side effects of a user provided `WithCount1` action, return the
  generated ID number,

The optional `options` argument of these functions must be a
dictionary which can contain two keys: `'modes'` and `'name'`.

The `modes` option, if provided, has to be a string containing only
letters `n`, `v`, `x`, `s`, `o`.  If it is omitted, it is assumed to be
`'nvo'`.

The `name` option, if provided, has to be a string matching the regex
`'^[-_.:[:alnum:]]\{1,45}$'` and not beginning with `MapToSideEffects-`
in any character case, and the user must ensure that the key sequence
`<Plug>(<name>)` has not yet been used as a mapping source.  If the
`name` option is omitted, the `name` is taken to be
`'MapToSideEffects-<id>'`, where `<id>` is the generated numerical ID.

Name collisions may be avoided as follows, for example:

(a) start names with "`<PluginName>-`" in plugins and with a dash "`-`"
  in user scripts, or

(b) do not provide custom names, use automatic names of the form
  "`MapToSideEffects-<id>`."

NOTE: the reason for not allowing the hypothetical user to provide an
  arbitrary key sequence to be mapped to the action's side effects is the
  complexity, if not impossibility, of assuming the responsibility for
  deciding how and whether to "sanitize" the provided key sequence (which
  would make part of a string fed to `execute` command), how and whether
  to escape special characters, how and whether to allow the user to
  supply extra options to `map` commands (such as `<special>`,
  `<silent>`, etc.), as well as the apparent impossibility to properly
  address the possibility of the user's using `<SID>` as a part of
  his/her/theirs keys sequence.

### Unregistering actions and removing mappings

The following functions unregister one or several previously registered
actions and clear the corresponding mappings.

* `mapToSideEffects#ClearOne(id)`
  -- remove the mapping and the data associated with the given ID number,

* `mapToSideEffects#ClearOneByName(name)`
  -- remove the mapping and the data associated with the given name,

* `mapToSideEffects#ClearMultiple(ids)`
  -- remove the mappings and the data associated with the given ID
  numbers,

* `mapToSideEffects#ClearMultipleByNames(names)`
  -- remove the mappings and the data associated with the given names,

The following function removes all the plugin's data and clears the
corresponding mappings.

* `mapToSideEffects#Reset()`
  -- remove all mappings and all data.

## Usage

Suppose one wishes to use the key sequence `<leader>ekf` in *Normal*,
*Visual*, and *Operator-pending* modes to perform the motion to the
nearest "end of a keyword," as defined by the pattern `'\>'` in *Vim*, in
the forward direction and taking into account the `[count]` prefix.
Using this plugin, this can be achieved as follows, for example.

1. Define a function `s:ToEndOfKeywordForward` with desired side effects
  that takes a positive integer argument `count1`:
  ~~~VimL
  function s:ToEndOfKeywordForward(count1)
    let l:count1 = a:count1
    while l:count1 > 0
      call search('\>', 'W')
      let l:count1 -= 1
    endwhile
  endfunction
  ~~~

2. Creates a mapping of `<Plug>(-GoToEndOfKeywordForward)` to the side
  effects of `s:ToEndOfKeywordForward` function in *Normal*, *Visual*,
  and *Operator-pending* modes:
  ~~~VimL
  call mapToSideEffects#SetUpWithCount1(
        \   function('s:ToEndOfKeywordForward'),
        \   {'name' : '-GoToEndOfKeywordForward', 'modes' : 'nxo'} )
  ~~~

3. Create desired custom mappings to `<Plug>(-GoToEndOfKeywordForward)`:
  ~~~VimL
  nmap <leader>ekf <Plug>(-GoToEndOfKeywordForward)
  xmap <leader>ekf <Plug>(-GoToEndOfKeywordForward)
  omap <leader>ekf <Plug>(-GoToEndOfKeywordForward)
  ~~~
