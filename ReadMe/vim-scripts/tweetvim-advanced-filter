Advanced filter for TweetVim
============================


TweetVim has a simple NG word filter as default filter.
This plugin adds a high-configuable filter to TweetVim.


All you have to do is to define a dictionary-function,
 `g:tweetvim_advanced_filter.executor`.
The function must have one argument and the argument is
a dictionary of tweet information. And it must return 1
or 0 which represents if the tweet should be filtered or
not.


An Example is following code.


    let g:tweetvim_advanced_filter = {}

    function! g:tweetvim_advanced_filter.executor(tweet)
        let source = matchstr(a:tweet.source, '^<a href="[^>]\+>\zs.\+\ze<\/a>$')
        return source == 'twittbot'
    endfunction


This filter filters tweets whose client name is 'twittbot'.
Example of a:tweet is available as example\_of\_tweet\_dict.txt .

This plugin is distributed under MIT license.
