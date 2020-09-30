# VimRegexConverter
Easily convert a magic regex to a verymagic one

---

RegexConverter allows to modify a regex written for a specific regex mode to
any other regex mode.

It was inspired be the following question on vi.se: [Is there a way to convert a Vim regex literal to different magic modes?](http://vi.stackexchange.com/q/9786/1841)

For more information about the available regex mode in Vim see [`:h /magic`](http://vimdoc.sourceforge.net/htmldoc/pattern.html#/magic)
                                                              
This plugin exposes one function `convertRegex()` which expects two parameters.

    ConvertRegex({mode}, {expr})

 - The `{mode}` parameter is a single character describing the mode you want to
 convert the regex to.
 Accepted values are : `'m'`, `'M'`, `'v'` and `'V'`.

 - The `{expr}` parameter is a single quoted string containing the regex you want
 to convert.
 The string MUST begin with the mode describing the regex i.e. `'\m'`, `'\M'`,
 `'\v'`or `'\V'`.

An example to call the function is:

    call ConvertRegex('v', '\m-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>')

which will return `\v-=<\d+L=>|0[xX][0-9a-fA-F]+>`.

To do the reverse operation the call is:

    call ConvertRegex('m', '\v-=<\d+L=>|0[xX][0-9a-fA-F]+>')

which will return `\m-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>`

---

**This is a work in progress**

The plugin still need some work to handle all of the characters needed in each mode.
Feel free to make a pull request or to contact me if you want to give some help.
