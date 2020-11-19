uTest
-----

__micro tests for VimL__

This is a tiny testing tool aimed mostly at small one-off VimL scripts.

uTest depends on https://github.com/dahu/VimaholicsAnonymous

Example:

    call UTest(expand('%:p'), expand('<sfile>:p')
          \, Fn('(r) => Roman().to_arabic(a:r)')
          \, [
            \  [1, 'I']
            \, [2, 'II']
            \, [3, 'III']
            \])
