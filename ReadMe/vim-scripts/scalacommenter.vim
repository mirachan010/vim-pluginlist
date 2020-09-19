# scala_commenter

Generate template Scala comments

# Introduction

Manage ScalaDoc comments for classes, traits, objects, methods, 
vals and vars:
  Generate comment templates and
  Format existing comment '@' tag lines

The comment generation code here inspired by Kalle Bjorklid's 
[JCommenter](http://www.vim.org/scripts/script.php?script_id=20)

Some of the basic utility functions, some recognition patterns
and many of the configuration parameters can be found in JCommenter.
While JCommenter is written in a imperative style, ScalaCommenter
has components that are Object Prototype based building on 
the Self.vim script which can be found at 
[Location](http://www.vim.org/scripts/script.php?script_id=3072)

The parameter algorithm has been re-worked, a template parameter 
algorithm has been added for Scala; as well as recognizing class 
constructors, values and variables.
The formatting part of this script is also new.

Functions for automatically generating ScalaDoc compatible comments.
The scala#commenter#Writer() can produce a number of kinds of comments 
depending on the current line/range.

Supported tags in the order they should appear in a comment are:

    * @author      (top-level classes, traits and objects only, required)
                   listed in chronological order
    * @version     (top-level classes, traits and objects only, required)
    * @param       (methods, classes and inner classes only)
                   listed in argument-declaration order
    * @tparam      (methods, all classes and all traits only)
                   listed in template argument-declaration order
    * @return      (methods only)
    * @throws      (methods and all classes)
                   listed in aplhabetical order
    * @see         
    * @since       
    * @serial      
    * @serialField
    * @serialData
    * @deprecated  

For more information (which may or may not apply to Scala) see 
[Sun Writing Doc Comments](http://java.sun.com/j2se/javadoc/writingdoccomments/)

# Installation

The Commenter autoload 'commenter.vim' code file should be in 
the 'autoload/scala' directory, the 'commenter.txt' in the 'doc/scala' 
directory and the plugin 'commenter.vim' code in the 'plugin/scala' directory.

# Dependency

The Scala Commenter depends upon the Vim Self library:
[Vim](http://www.vim.org/scripts/script.php?script_id=3072)
[GitHub](https://github.com/megaannum/self)


# Usage

Place cursor on line with object, class, var, val or def is declared and
invoke: scala#commenter#Writer().

To re-format an existing scala comment, place cursor within the bounds
of the comment and invoke: scala#commenter#Formatter()

These commands are defined as key mappings in the 
plugin/scala/commenter.vim file:

    autocmd FileType scala map cm :call scala#commenter#Writer()<CR>
    autocmd FileType scala map cf :call scala#commenter#Formatter()<CR>

## Vim

[Vim location](http://www.vim.org/scripts/script.php?script_id=3047)

## Acknowledgements and thanks

- Andy Wokula: provided feedback on help file syntax.
