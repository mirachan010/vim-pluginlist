# scala_format

Format Scala method arguments

## Instalation

The Format autoload 'format.vim' code file should be in the 'autoload/scala'
directory, the 'format.txt' in the 'doc/scala' directory and the plugin
'format.vim' code in the 'plugin/scala' directory.

## Usage

Place the cursor on any character in the method name or on the methods left
paren, '(', and then invoke this script. If you use the binding above, you
would enter <Leader>f.

The script finds the first non-white-space character after the method's left
paren and uses that as the character position for aligning all arguments. 

Examples of method calls:

    m1(thisIsArgOne, thisIsArgTwo, thisIsArgThree(), thisIsArgFour): Sometype = {
    ....
    }

becomes

    m1(thisIsArgOne, 
       thisIsArgTwo, 
       thisIsArgThree(), 
       thisIsArgFour): Sometype = {
      ....
    }

and the following (note first argument position):

    aVeryLongMethodNameAsAnExampleUsage(
                            thisIsArgOne, thisIsArgTwo, thisIsArgThree, thisIsArgFour): Sometype = {
      ....
    }

becomes

    aVeryLongMethodNameAsAnExampleUsage(
                            thisIsArgOne, 
                            thisIsArgTwo, 
                            thisIsArgThree, 
                            thisIsArgFour): Sometype = {
      ....
    }

becomes (with g:scala_format_extra_arg_offset = 2)

    aVeryLongMethodNameAsAnExampleUsage(
                            thisIsArgOne, 
                              thisIsArgTwo, 
                              thisIsArgThree, 
                              thisIsArgFour): Sometype = {
      ....
    }

Generally, in this case you can change the location of the first method
argument and reformat and it works (the rest of the arguments are aligned
under the first argument).

Examples of method calls with string arguments:

    m1(thisIsArgOne, "this is" + somestring + "a \"foo()\" test", thisIsArgThree): Sometype = {
      ....
    }

becomes (with let g:scala_format_extra_string_arg_offset = 0) 

    m1(thisIsArgOne, 
       "this is" + 
       somestring + 
       "a \"foo()\" test", 
       thisIsArgThree): Sometype = {
      ....
    }

or becomes (with let g:scala_format_extra_string_arg_offset = 2)

    m1(thisIsArgOne, 
       "this is" + 
         somestring + 
         "a \"foo()\" test", 
       thisIsArgThree): Sometype = {
      ....
    }

Yea, it can actually do this. 

One more example of a method where an argument is itself a method call:

    m1(thisIsArgOne, thisIsArgTwo(innerOne, innerTwo), thisIsArgThree()): Sometype = {
      ....
    }

placing cursor on "m1(" and invoking this script becomes

    m1(thisIsArgOne, 
       thisIsArgTwo(innerOne, innerTwo), 
       thisIsArgThree()): Sometype = {
      ....
    }

then placing cursor on "thisIsArgTwo(" and invoking this script becomes >

    m1(thisIsArgOne, 
       thisIsArgTwo(innerOne, 
                    innerTwo), 
       thisIsArgThree()): Sometype = {
      ....
    }

Examples of method definitions:

    def m1(thisIsArgOne: String, thisIsArgTwo: Int, thisIsArgThree: Float): Sometype = {
      ....
    }

becomes

    def m1(thisIsArgOne: String, 
           thisIsArgTwo: Int, 
           thisIsArgThree: Float): Sometype = {
      ....
    }

and the following (note first argument position):

    def aVeryLongMethodNameAsAnExampleUsage(
                            thisIsArgOne: String, thisIsArgTwo: Int, thisIsArgThree: Float): Sometype = {
      ....
    }

becomes

    def aVeryLongMethodNameAsAnExampleUsage(
                            thisIsArgOne: String, 
                            thisIsArgTwo: Int, 
                            thisIsArgThree: Float): Sometype = {
      ....
    }


Array definition:
As an unplanned extra, this can be used to format the arguments to an
array:

    val a = Array[Int] ( 1, 3, 4, 5, 4)

becomes

    val a = Array[Int] ( 1, 
                         3, 
                         4, 
                         5, 
                         4)

and

    val a = Array[Int] ( 
              1, 3, 4, 5, 4)

becomes

    val a = Array[Int] ( 
              1, 
              3, 
              4, 
              5, 
              4)

Ok, so formating an array does not do too much.

## Vim

[Vim location](http://www.vim.org/scripts/script.php?script_id=3498)
