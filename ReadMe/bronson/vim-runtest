# RunTest Vim Plugin

Run tests from within Vim and navigate to test failures using the quickfix window.  Supports:

* Ruby:
    [Rspec 3](https://github.com/rspec/rspeca),
    [RSpec 2](http://relishapp.com/rspec),
    [RSpec 1](http://rspec.info/),
    [MiniTest](https://github.com/seattlerb/minitest), and
    [Test::Unit](http://stdlib.rubyonrails.org/libdoc/test/unit/rdoc/classes/Test/Unit.html)
* Perl: tbd
* Python?

This was supposed to be a small plugin that shelled out to rspec/cucumber/etc
and presented its results in the quickfix window.

Unfortunately, vim's quickfix window has a horrible limitation: each error must be on a
a single line.  This makes it next to impossible to follow a typical error and makes
navigating anywhere except the topmost function call really painful.
Until this is fixed I think this plugin, and all test runners like it, are dead ends.

One line per error might have been OK in the 90s but it's simply unusable these days.
I'm guessing skwp/vim-rspec's hack of using a regular buffer is the only reasonable way
to move forward.



## Installation

Same as any other Vim plugin: use [Pathogen](https://github.com/tpope/vim-pathogen) and clone this repo into ~/.vim/bundle.


## Usage

TODO: don't map these if the user has already mapped them.
TODO: integrate with vim-dispatch?  at least allow it.

* `<Leader>t` run closest test to the cursor
* `<Leader>T` run all tests in current file
* `<Leader>r` re-run the previous test run
* `<Leader>R` run all possible tests

TODO: Very cool idea: <https://github.com/reinh/vim-makegreen>  Can it be integrated with airline?


## Alternatives

Running tests in vim has been dismal for years.  So stupid that the
quickfix window can only show one line per error.  Those backtraces
so critical to understanding what the test is doing?  Gone.

* vim-rubytest: <https://github.com/janx/vim-rubytest><br/>
    I really tried to like this plugin but never found it reliable.<br/>
    \t runs testcase, \T runs all tests in file, \l reruns last test

* vim-rspec: <https://github.com/taq/vim-rspec><br/>
    Uses hpricot/xslt to postprocess instead of using an rspec formatter.<br/>
    :RunSpec runs current file, :RunSpecs runs all tests.  Looks discontinued.

* vim-rspec: <https://github.com/skwp/vim-rspec><br/>
    Much improved fork of taq's but still uses hpricot and is crashy.
    LOVE multiline colored rspec output!  Doesn't show backtraces though?
    Hitting return on file/line opens file in "quickfix" window, irritating.

* vim-rspec: <https://github.com/thoughtbot/vim-rspec>
    Simple test launcher, not much to get excited about.  Fairly popular.

* vim-rspec-runner: <https://github.com/rorymckinley/vim-rspec-runner>
    Nice, I really like that it has unit tests.  Only rspec though.

* VimTestRunner: <https://github.com/dahu/VimTestRunner><br/>
    Works for Django (Python) and Ruby, nice features
    <leader>y to run current file, <leader>a to run all tests, shows test results as a green or red bar.

* https://github.com/ajh/rspec-quickfix-formatter

* rspec-tmbundle (for TextMate users): <https://github.com/rspec/rspec-tmbundle>

* what's the best Emacs spec runner?  Any chance it's better than Vim's tools?


## Authors

 * Scott Bronson <http://github.com/bronson>
 * Gary Bernhard <https://github.com/garybernhardt/dotfiles/blob/master/.vimrc>

