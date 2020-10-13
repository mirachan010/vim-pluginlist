## Custom matchers for vim-vspec

This plugin provides custom matchers for [vim-vspec](https://github.com/kana/vim-vspec), a testing framework for Vim.
Call `vspec#matchers#load()` before executing test cases. Install vim-vspec and set the path to vim-vspec-matchers to `runtimepath` in advance.

### Matchers

```vim
Expect 'vspec/matchers'        to_be_installed
Expect 'v:version'             to_exist
Expect '*vspec#test'           to_exist
Expect 'g:hogeee'              to_exist_and_default_to 42
Expect [1, 2, 3]               to_include 2
Expect {'a' : 1}               to_include ['a', 1]
Expect "aiueo"                 to_include "iue"
Expect "hogeee"                to_match 'e\+$'
Expect ""                      to_be_empty
Expect []                      to_be_empty
Expect {}                      to_be_empty
Expect {'a' : 1}               to_have_key 'a'
Expect {'a' : 1}               to_have_value 1
Expect 'm'                     to_be_mapped
Expect 'm'                     to_be_mapped_in 'nv'
Expect 'm'                     to_be_mapped_to ":search('m')<CR>"
Expect 'g:hogeee'              to_be_locked
Expect ''                      to_be_in_current_buffer
Expect expand('~/.vim')        to_be_in_dir expand('~')
Expect expand('~/.vimrc')      to_be_in_dir expand('~')
Expect expand('~/.vimrc')      to_be_readable_file
Expect expand('~/.vimrc')      to_be_writable_file
Expect 'vim'                   to_be_executable
Expect expand('~')             to_be_directory
Expect 'unix'                  to_be_supported
Expect [1, 2, 3]               to_be_type_of []
Expect 42                      to_be_num
Expect '(U^w^)'                to_be_string
Expect function('tr')          to_be_funcref
Expect [1, 2, 3]               to_be_list
Expect {'tsura' : 'poyo'}      to_be_dict
Expect 3.14                    to_be_float
Expect 'file'                  to_be_unite_source
Expect 'buffer'                to_be_unite_kind
Expect 'sorter_rank'           to_be_unite_filter
Expect 'throw 0'               to_throw_exception
Expect 'unlet nonexestent_var' to_throw_exception_of 'E108'
Expect "silent normal! \<C-g>" not to_move_cursor
Expect "silent normal! \<C-g>" not to_change_var 'g:hogeee'
Expect "let s:hogeee = 42"     not to_change_global_var
Expect "silent normal! \<C-g>" not to_change_current_buffer
```

### Author

rhysd([@Linda_pp](https://twitter.com/Linda_pp))

### License

This plugin is distributed under [MIT License](http://opensource.org/licenses/MIT)
