surfer.vim
==========

This plugin provides a nice interface for navigating code built on top of Ctags.

![Screenshot](_assets/screenshot.png "Surfer in action.")


## Requirements

Surfer requires Vim 7.3+ compiled with Python 2.x support (2.6+).


## Installation

### Step 1

First, you need to get [Exuberant Ctags](http://ctags.sourceforge.net/) (You can check if it is
already installed on your system with `$ ctags --version.`)

**Windows**

You can easily get the `ctags.exe` executable from the [Exuberant Ctags](http://ctags.sourceforge.net)
site. Download and extract the `ctags.exe` executable in a folder within your `%PATH%`.

**OS X**

Unfortunately, the *Ctags* program that you may find under `/usr/bin` is outdated, so you need to
get the right version. The easiest way to do that is with *homebrew*

    $ brew install ctags

**Debian, Ubuntu, Mint, etc**

    $ sudo apt-get install exuberant-ctags

**Red Hat, Fedora, CentOS, etc**

    $ sudo yum install ctags

### Step 2

Install the plugin with [Vundle](https://github.com/gmarik/vundle)

    # this line needs to be added to your .vimrc file
    Bundle "gcmt/surfer.vim"

or [Pathogen](https://github.com/tpope/vim-pathogen)

    $ cd ~/.vim/bundle
    $ git clone git://github.com/gcmt/surfer.vim.git

### Step 3

Now, if you are a OS X or Linux user, to complete the installation go to the plugin root directory
and run

    $ ./install.sh

This will compile some files needed for better search performances.

### Troubleshooting

Usually *Surfer* is able to locate the correct *Ctags* program by himself, but if this is not the
case, add the following line in your `.vimrc`:

    let g:surfer_ctags_prg = "/path/to/ctags"


## Usage

To open *Surfer* execute the `:Surf` command. As you type something, Surfer will show you a list of
tags in the current session that match your query. You can interact with search results with the
following keys.

* `UP`, `TAB`, `CTRL+K`: move up.
* `DOWN`, `CTRL+J`: move down.
* `RETURN`, `CTRL+O`, `CTRL+G`: jump to the selected tag.
* `CTRL+P`: open a preview window for the selected tag.
* `CTRL+S`: split the window for the selected tag.
* `ESC`, `CTRL+C`: close *Surfer*.
* `CTRL+U`: clear the current search.

Rememberer that when you jump to a tag you can easily jump back to the previous position with
`CTRL+T`, as you would normally do in Vim.

### Search scope

Searches are not limited to the current session. You can narrow or widen the search scope using
modifiers. A modifier is simply a special letter that you prepend to your search query. Below is
list of all available modifiers:

* `%`: this modifier narrows the search scope to the current buffer.
* `#`: this modifier widens the search scope to all files of the current project. Note that a
project root is assumed to be the one that contains any of the file or directory names listed in
`g:surfer_root_markers`.

Note that project-wide search is still very inefficient and has to be considered still an
experimental feature.


## Basic options

#### g:surfer\_ctags\_prg

With this option you can set the path of the Ctags executable on your system. You usually need to do
this only if Surfer is not able to locate the Ctags executable by himself.

Default: `""`

#### g:surfer\_smart\_case

This option controls the way matching works. When this option is turned on, a search is
case-insensitive only if you enter the search string in all lower case letters.

Default: `1`

#### g:surfer\_exclude

With this option tou can set glob patterns that are used to exclude files and directories from
search results.

Example:

    let g:surfer_exclude = ["*/[Dd]oc?/*", "*/[Tt]est?/*"]

Default: `[]`

#### g:surfer\_exclude\_kinds

With this option you can exclude kinds from search results. To get a list of the kinds that Ctags is
able to recognize per language, execute

    $ ctags --list-kinds

Note that this option apply only to languages recognized by Exuberant Ctags.

Default: `[]`

#### g:surfer\_root\_markers

With this option you can set file and directory names that are used to locate the root of the
current project.

Note that when you assign a list to `g:surfer_root_markers` the default markers won't be replaced
but just extended.

Default: `['.git', '.svn', '.hg', '.bzr', '.travis.yml']`

#### g:surfer\_custom\_languages

With this option you can add support for languages not supported by Exuberant Ctags. See the
[dedicated section](https://github.com/gcmt/surfer.vim#languages-support) in the documentation
to see how to set this option.

Default: `{}`


## Appearance

#### g:surfer\_max\_results

This option controls the maximum number of search results displayed.

Default: `15`

#### g:surfer\_current\_line\_indicator

With this option you can set the cahracter/s used by Surfer to indicate the currently selected tag.

Default: `" "`

#### g:surfer\_line\_format

This options controls the format of search results. This option is a list of strings and each one
can contain at most one special *placeholder* that will be substituted with the corresponding value.
When the value is absent, the whole list item won't displayed. Available placeholders vary across
different languages but common placeholders include:

* `{file}`: the file in which the tag is defined.
* `{line}`: the line of the tag in `{file}`.
* `{kind}`: the kind of the tag.
* `{class}`: the name of the class for which the tag is a member or method.
* `{language}`: the language of the file in which tags is defined.

Example:

    let g:surfer_line_format = ["{file}", " ({line})", " class: {class}"]

Default: `[" @ {file}"]`

#### g:surfer\_tag\_file\_custom\_depth

This option controls how the value for the placeholder `{file}` is formatted. If the value is
greater than zero, the value represent the maximum number of container directories displayed in the
file path.

Default: `-1`

#### g:surfer\_tag\_file\_relative\_to\_project\_root

When this option is turned on, the value of the placeholder `{file}` is displayed relative to the
project root, if a root exists. This option ovverride `g:surfer_tag_file_custom_depth` when
a project root is found.

Default: `1`

#### g:surfer\_shade\_color

With this option you can set the color everything except the tag name and the current line
indicator.  As value, you can use either a predefined color group or a complete color definition.
Set this option to an empty string if you want no color.

Examples:

    # example 1
    let g:surfer_shade_color = "String"

    # example 2
    let g:surfer_shade_color = "guifg=#cccccc guibg=#000000"

Default: `'Comment'`

#### g:surfer\_matches\_color

With this option you can set the color for matching letters in tag names.
As value, you can use either a predefined color group or a complete color definition.
Set this option to an empty string if you want no color.

Examples:

    # example 1
    let g:surfer_matches_color = "WarningMsg"

    # example 2
    let g:surfer_matches_color = "guifg=#ff0000"

Default: `'WarningMsg'`

#### g:surfer\_prompt

With this option you can customize the prompt appearance.

Default: `" @ "`

#### g:surfer\_prompt\_color

This option controls the color of the Surfer prompt. As value, you can use either a predefined color
group or a complete color definition. Set this option to an empty string if you want no color.

Examples

    # example 1
    let g:surfer_prompt_color = "String"

    # example 2
    let g:surfer_prompt_color = "guifg=#ff00ff"

Default: `""`

#### g:surfer\_visual\_kinds

When this option is turned on, a colored square (or anything you set with `g:surfer_visual_kinds_shape`)
is displayed before each tag name to indicate the kind of the tag.

Default: `1`

#### g:surfer\_visual\_kinds\_shape

With this option you can set a custom character to be used when the option `g:surfer_visual_kinds`
is turned on.

Default: `"\uFFED"`

#### g:surfer\_visual\_kinds\_colors

With this option you can customize the color of `g:surfer_visual_kinds_shape` for each kind when the
option `g:surfer_visual_kinds` is turned on. (to get a list of what kinds can be recognized by Ctags
execute `$ctags --list-kinds`). As value, you can use either a predefined color group or a complete
color definition.

Note that when you want to change these colors you need to assign to `g:surfer_visual_kinds_colors`
a dictionary with just the kinds you want to update or add.

Default:

    {
      "interface": "Repeat",
      "class": "Repeat",
      "member": "Function",
      "method": "Function",
      "function": "Function",
      "type": "Type",
      "variable": "Conditional",
      "constant": "Conditional",
      "field": "String",
      "property": "String"
    }


## Languages support

Exuberant Ctags only supports a limited set of languages (`$ ctags --list-languages`).
If you want to add support for a new language there are mainly two methods for doing this.

### Method 1

The first method relies directly on Ctags and its extending capabilities. It just requires you to
add some lines to the file `$HOME/.ctags` and you are done. If you search the web you'll certainly
find what you need for your language.

Check this [link](http://ctags.sourceforge.net/EXTENDING.html) for further information about
how to integrate custom languages in Exuberant Ctags.

### Method 2

If you want to rely on an external Ctags-compatible tag generator for your language, *Surfer*
provides the `g:surfer_custom_languages` option to do this. Setting this option is better explained
with an example.

With the following example we are going to add support for the Go language with the help of
[gotags](https://github.com/jstemmer/gotags), a ctags-compatible tag generator for Go.

```vim
let g:surfer_custom_languages = {
    \ "go": {
        \ "ctags_prg": "/usr/local/bin/gotags",
        \ "ctags_args": "-silent -sort",
        \ "kinds_map": {
            \ 'p': 'package', 'i': 'import', 'c': 'constant', 'v': 'variable',
            \ 't': 'type', 'n': 'interface', 'w': 'field','e': 'embedded',
            \ 'm': 'method', 'r': 'constructor', 'f': 'function'},
        \ "exclude_kinds": ["variable", "constant"],
        \ "extensions": [".go"]
    \ },
\ }
```
As you can see from the example above, adding support for a custom language requires you to use
a unique filetype name, along with other mandatory information, such as the executable of the
Ctags-compatible tag generator, its arguments and the extensions of the files for which you want to
use the specified tag generator.

With the `ctags_prg` and `ctags_args` keys you can set the path of custom *Ctags* program and its
arguments respectively. In order to make things work you have to be sure that the output of the
custom *Ctags-compatible* program is will be **sorted** and redirected to **stdout**, so you may
need to set the arguments accordingly.

Setting the *extensions* key is paramount. This is a list of file extensions used for the files for
which you to used the custom Ctags program.

With the `exclude_kinds` key you can set exclusion rules based on the kind of the tag. For example,
the code above will exclude all tags with the kind `constant` or `variable` from search results for
tags generated with the custom Ctags program. Note that this override the global option
`g:surfer_exclude_kinds`.

Setting the `kinds_map` key may be required when your custom *Ctags* prgram displays only single
letters for the *kind* field and you want more readable names.


## Contributing

Do not esitate to send [patches](../../issues?labels=bug&state=open),
[suggestion](../../issues?labels=enhancement&state=open) or just to ask
[questions](../../issues?labels=question&state=open)! There is always room for improvement.


## Credits

See [this page](https://github.com/gcmt/vim-surfer/graphs/contributors) for all *Surfer* contributors.
