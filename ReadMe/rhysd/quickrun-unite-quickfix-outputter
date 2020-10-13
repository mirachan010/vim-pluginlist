# vim-quickrun outputter for Unite-quickfix

QuickRun result outputter for unite-quickfix.

- quickrun:       https://github.com/thinca/vim-quickrun
- unite-quickfix: https://github.com/osyo-manga/unite-quickfix

##Installation

`NeoBundle 'rhysd/quickrun-unite-quickfix-outputter'`

##Usage

specify `unite_quickfix` as quickrun outputter.

Example:

    let g:quickrun_config._ = { 'outputter' : 'unite_quickfix' }

##Hook for Hier.vim

If you use Hier.vim, `hier_update` hook is available to update Hier.vim's highlight automatically.

Example:

    let g:quickrun_config._ = { 'outputter' : 'unite_quickfix', 'hook/hier_update/enable' : 1 }

##Variable

`g:quickrun_unite_quickfix_outputter_args` is list of argment.
This list is passed as unite-quickfix arguments.

`g:quickrun_unite_quickfix_outputter_unite_context` is dictionary.
This dictionary is passed as context of unite.
For example, if you don't want to open unite-quickfix with insert-mode,
below setting is available.

    let g:quickrun_unite_quickfix_outputter_unite_context = {'start_insert' : 0}

Please check unite.vim help for more information.

##License: MIT License

    Copyright (c) 2012 rhysd

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
    of the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:


    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
    INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
    PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
    THE USE OR OTHER DEALINGS IN THE SOFTWARE.

