vim-operator-jerk
===============

Indent inside lines.

#Introduction

The operator-jerk is a Vim plugin to implement operators to fill or squash white spaces for formatting text. It works like indenting inside lines. For example a built-in operator '>' increment indents. But this operator only takes the begginings of lines as targets. The operator-jerk is a variant of the operator, it can take textblocks inside lines as targets. The target of the operator is determined by the head of the following {motion} or text-objects.

#Examples
The shiftwidth is assumed as 4. '#' represents the initial cursor position.

##\<Plug>(operator-jerk-forward)iw
```
               #
Before: abc    def    ghi
 After: abc        def    ghi
```

##\<Plug>(operator-jerk-backward)iw
```
               #
Before: abc    def    ghi
 After: abcdef    ghi
```

##\<Plug>(operator-jerk-forward-partial)iw
```
               #
Before: abc    def    ghi
 After: abc        defghi
```

##\<Plug>(operator-jerk-backward-partial)iw
```
               #
Before: abc    def    ghi
 After: abcdef        ghi
```

