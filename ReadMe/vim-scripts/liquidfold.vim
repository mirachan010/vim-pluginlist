# **liquidfold.vim**

liquidfold.vim provides Vim syntax folding for [Liquid templates](http://liquidmarkup.org/). It supports any tags that have an associated end tag, including:

    {% comment %} {% endcomment %}
    {% raw %} {% endraw %}
    {% if %} {% endif %}
    {% case %} {% endcase %}
    {% for %} {% endfor %}
    {% tablerow %} {% endtablerow %}
    {% block %} {% endblock %}


## Installation

Use [pathogen.vim](https://github.com/tpope/vim-pathogen), and clone liquidfold.vim into your ~/.vim/bundle directory.

    cd ~/.vim/bundle
    git clone git@bitbucket.org:bbakersmith/liquidfold.vim.git


## Customization

By default, all foldable tags will be folded. To specify a subset of these tags for folding, set g:liquidfold_words in your vimrc.

    let g:liquidfold_words = "block,if"


## Source

liquidfold.vim is maintained at:

[https://bitbucket.org/bbakersmith/liquidfold.vim](https://bitbucket.org/bbakersmith/liquidfold.vim)

[https://github.com/bbakersmith/liquidfold.vim](https://github.com/bbakersmith/liquidfold.vim)


## Version

liquidfold.vim v1.2


## License

The MIT License (MIT)

Copyright (c) 2013 Ben Baker-Smith

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
