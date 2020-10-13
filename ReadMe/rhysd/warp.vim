## Jump Line with Lower 2 Digits

At first, map `<Plug>(warp_lower2digits_trigger)` to any keys.

    nmap m <Plug>(warp_lower2digits_trigger)

Now, you can jump line using lower 2 digits of a line number.
Additional, your hands need not leave a home position because
you don't type number keys.

In this plugin, `asdfghjkl;` is mapping to `1234567890`.
This mapping is controled by `g:warp_map_to`. Please see `plugin/warp.vim`
to get more information about it.


I'll show some examples in above setting.

<table>
<tr>
<th>
    before<br>
    line number
</th>
<th>
    your<br>
    input
</th>
<th>
    after<br>
    line number
</th>
</tr>
<tr>
<td>100</td><td>mfg</td><td>145</td>
</tr>
<tr>
<td>100</td><td>mk;</td><td>180</td>
</tr>
</table>
