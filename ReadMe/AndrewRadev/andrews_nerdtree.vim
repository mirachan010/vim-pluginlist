## Andrew's NERDTree

This plugin extends the NERDTree Vim plugin with a few additions I've found useful myself. It's my personal bag of NERDTree tricks. Which is why it's very likely that you won't need every single of these plugins. You can enable or disable every one of them individually, or just enable them all at once.

The plugin requres NERDTree (https://github.com/scrooloose/nerdtree) to be installed. To enable all plugins, simply put the following in your `.vimrc`:

``` vim
let g:andrews_nerdtree_all = 1
```

To enable only a selection of features, use a subset of these:

``` vim
let g:andrews_nerdtree_buffer_fs_menu     = 1
let g:andrews_nerdtree_diff               = 1
let g:andrews_nerdtree_external_open      = 1
let g:andrews_nerdtree_interactive_edit   = 1
let g:andrews_nerdtree_startshell_mapping = 1
let g:andrews_nerdtree_git_filter         = 1
```

Setting any of these to 0 or simply omitting them will mean the particular plugin is not loaded.

It's important that this plugin is activated *before* NERDTree is activated. If you use a plugin manager, make sure they're correctly ordered, for example in vim-plug:

``` vim
Plug 'AndrewRadev/andrews_nerdtree.vim'
Plug 'scrooloose/nerdtree'
```

If you manage plugins manually (with pathogen, or just extracting them in your `~/.vim` directory), try this:

``` vim
runtime! andrews_nerdtree/plugin.vim
runtime! nerdtree/plugin.vim
```

An explanation on all the separate plugins follows.

### Buffer FS menu

![Demo](http://i.andrewradev.com/b1846c6c6e4bea4da2b5e8c06e45b0b9.gif)

This plugin adds a filesystem manipulation menu almost exactly like the default one. The difference is that operations that require entering a file path, namely "add", "move" and "copy", use a separate one-line buffer to receive the input, instead of the default vim dialog. This allows you to use vim keybindings to move around the file path.

Most of the code here is taken directly from Marty Grenfell's original `fs_menu` plugin that ships with the NERDTree. A few minor things have been reformatted, because I liked them better that way.

The custom mappings for the special buffer holding the filename are as follows:

  - `o` and `O` do nothing in **normal** mode, to avoid opening up a second line by accident
  - `<esc>` and `<C-[>` in **normal** mode close the buffer, cancelling the operation
  - `<C-c>` closes the buffer in both **normal** and **insert** mode, cancelling the operation
  - `<enter>` in both **normal** and **insert** mode executes the operation and closes the buffer

Note that the `<enter>` key works even when the completion menu is opened -- you can't use completion in this buffer (a bit of a problem). To that end, if you happen to be using the Acp plugin, it's automatically disabled for the buffer (yes, this is extremely very niche).

If you leave the buffer, it's automatically closed.

### Diff

The diff plugin adds a keybinding that diffs the current node against the closest-open buffer. It's a simple shortcut to triggering `:diffthis`, opening the file and running `:diffthis` again.

The default key used is "D". You can change it by setting `g:andrews_nerdtree_diff_key`, for instance:

``` vim
let g:andrews_nerdtree_diff_key = '<leader>d'
```

### External open

This is similar to netrw's `gx` mapping -- it opens up the node in an external program. The mapping triggers netrw's callback function, so anything that netrw can handle, this should be able to as well.

However, if you want to set your own handling function (I've found that netrw seems to do different things than I'd like for directories), you can define a global function named `OpenURL`, which takes a single argument -- the full path of the file/directory. For example:

``` vim
function! OpenURL(url)
  let url = shellescape(a:url)

  if executable('xdg-open')
    silent call system('xdg-open '.url.' 2>&1 > /dev/null &')
  else
    echoerr 'You need to install xdg-open to be able to open urls'
    return
  endif
endfunction
```

The default mapping used is `gx`. You can change it by setting `g:andrews_nerdtree_external_open_key`, for instance:

``` vim
let g:andrews_nerdtree_external_open_key = 'gu'
```

### Interactive Edit

This is a menu entry that only shows up on directories. It will appear as:

```
NERDTree Menu. Use j/k/enter and the shortcuts indicated
==========================================================
  (a)dd a childnode
  (m)ove the current node
  (d)elete the curent node
  (c)opy the current node
> (e)dit directory contents
```

Triggering that menu item will open up a new buffer that looks like this:

```
/path/to/dir
============

/path/to/dir/some_file  -> /path/to/dir/some_file
/path/to/dir/other_file -> /path/to/dir/other_file
/path/to/dir/third_file -> /path/to/dir/third_file
```

The filenames on the left side are the original filenames, while the ones on the right are the "output" filenames. If you change any of those, the plugin will perform a rename from the left filename to the right one. If you delete everything from the arrow onward on a row, that file will be deleted.

Note that the plugin is not particularly sophisticated. If you have any suggestions for improvements, please open a github issue.

### Startshell Mapping

This adds a mapping to the NERDTree that starts a `:shell` in the directory of the current node.

The default mapping used is `S`. You can change it by setting `g:andrews_nerdtree_startshell_mapping_key`, for instance:

``` vim
let g:andrews_nerdtree_startshell_mapping_key = '<leader>s'
```

This plugin was originally created by the author of NERDTree, Marty Grenfell, himself. The original should be here: https://gist.github.com/scrooloose/203928

### Git Filter

When this plugin is enabled, a command is defined, called `:NERDTreeGitFilterToggle`. Executing this command will make the NERDTree only show files that have been modified by git in some way. This can be useful for reviewing code before committing. Executing it again will turn the filtering off.

## What's with the stupid name?

It's just a bag of scripts I've built over the years. There's no common thread connecting them, other than that they're for my own NERDTree. Plus, I figure `andrews_nerdtree` should be unique enough. If you're named Andrew and would have liked to create a NERDTree plugin with that name, I'm sorry. Do open an issue to complain, we might figure something out.

## Contributing

Pull requests are welcome, but bear in mind these are my own personal scripts. I might turn them down if I don't find them useful myself, but who knows.
