What is this
==================================
Evaluate selected text as ruby code then print or insert. 

I love Ruby, one of the goodness of ruby is it has many way to express Array , String , etc..
When I write other Language such as Python or JavaScript and want to prepare 
array `[ "a", "b", "c", "d" ]`.
You can write `%w(a b c d)` then select text , then execute `:RubyEvalInsert` to 
insert `[ "a", "b", "c", "d" ]` to buffer.


Requirement
==================================
    gem install awesome_print

Example keymap
==================================
    vnoremap <silent> <Space>p :<C-u>RubyEvalPrint<CR>
    vnoremap <silent> <Space>i :<C-u>RubyEvalInsert<CR>

    nnoremap <silent> <Space>p :<C-u>RubyEvalPrint<CR>
    nnoremap <silent> <Space>i :<C-u>RubyEvalInsert<CR>

Usage Example
==================================
In following what I want you to try is.. 
set cursor position to ruby fragment, then execute `:RubyEvalInsert`

## insert 10 size array for random number from 1 to 6 to buffer
    10.times.map {|n| rand(6) + 1}

## insert array for "A" to "Z"
    ("A".."Z").to_a.join()

## to insert `{"port"=>"80", "ip"=>"192.168.1.1"}` to buffer with minimal key stroke
    Hash[*%w(port 80 ip 192.168.1.1)]
