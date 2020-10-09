vim-py-anything
=======================
This is vim's plugin which aims to similar functionality to Emacs's anything.
This plugin is completely written in python.

Main purpose to create this plugin is to teach me python programming language.
So, feature is greatly specific for my development environment.

This plugin require +python feature.

NOTE: this plugin is very very alpha state.

Setting example
----------------------------------
# .vimrc

    nnoremap <D-j> :python anything.start(src=ac_src_cmd, ac_src_dict=ac_src_dict, mode='n')<CR>
    vnoremap <D-j> :python anything.start(src=ac_src_cmd, ac_src_dict=ac_src_dict, mode='v')<CR>

    nnoremap <D-i> :python anything.start(src=ac_src_command_t)<CR>
    nnoremap <C-n> :python anything.start(src=ac_src_buffer)<CR>
    vnoremap <C-n> :python anything.start(src=ac_src_buffer)<CR>

# directly launch command without using anything window.

    au BufNewFile,BufReadPost about_*.py nnoremap <buffer> <D-r> :python anything.run(py_koan)<CR>

anything_source_cmd example
----------------------------------
If you want add the new command to anything_source_cmd.
See following example.

    @anything_command(mode='v')
    def this_is_new_cmd(arg1, arg2):
        """This doc string is shown in anytiing window"""

        "you can read user's input by vim.prompt"
        if not header: header = vim.prompt("header? :")
        if not footer: footer = vim.prompt("footer? :")

        " you can use anything.range to get visual selected range"
        cr = anything.range
        new_text = [header] + cr[:] + [footer]
        cr[:] = None
        vim.insert(cr.start,new_text)

Special Thanks
----------------------------------

#### [ Command-t ]( https://github.com/wincent/Command-T )
User interface and architecture is greately inspired and borrowed from command-t which is also derived from inspiration from by LustiExplorer.

#### [ vimilicious ]( https://github.com/remi/vimilicious )

