vim-textobj-codeblock
=====================

This plugin provides a custom text object to target github-style fenced code
blocks like the following:

<pre>
  <code>
``` ruby
class MyClass
  def my_method
    puts "hello world"
  end
end
```
  </code>
</pre>

The plugin provides a text object to select the contents of the codeblock, as
well as the entire codeblock (including the opening and closing backtick lines).

Usage
-----

The plugin provides the following mappings by default:

| Mapping | Functionality                              |
| ------- | -------------                              |
|    `ic` | Contents of the codeblock                  |
|    `ac` | Entire codeblock, including backtick lines |

**Note** - The plugin requires the opening line of the codeblock to include a
filetype declaration.

Installation
------------

This plugin relies on the amazing [textobj-user][] plugin which provides nearly
all the actual functionality, with this plugin specifying the pattern to target
the codeblock.

To install, you'll need both this plugin and textobj-user. If you don't have a
preferred installation method, I recommend using [vim-plug][].

```vim
Plug 'kana/vim-textobj-user'
Plug 'christoomey/vim-textobj-codeblock'
```

[textobj-user]: https://github.com/kana/vim-textobj-user
[vim-plug]: https://github.com/junegunn/vim-plug
