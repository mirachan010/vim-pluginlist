Usage
=====

Adds a new command, `:BrowserPrint`, which will send the contents of the current
buffer to a new browser window (or tab) in HTML, preserving the current font,
formatting, and encoding.

Just run `:BrowserPrint`, and watch the magic.

Why?
====

Printing from MacVim opens a PDF in Preview, with monospace font and the
encoding completely lost. Other GUI vims may have similar problems. This is a
workaround that relies on HTML and a decent web browser to preserve the
formatting nicely.

The idea is to send it to the browser, then use the browser's built-in print
functionality.

Limitations
===========
- Requires Python support in Vim
- Should work on Windows/Linux but not tested (yet!)
- HTML content in the file will screw up the output as it isn't escaped

