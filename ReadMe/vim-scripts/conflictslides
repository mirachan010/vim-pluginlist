vim-conflict-slides
===================
Lock to a range of lines delineated by conflict markers and skip through or
assemble different content for that section.

You can insert or append the content from sections available in the conflict
range.  Namely `ours`, `theirs`, or `base` (if present).  In this regard, you
are independent from how the buffers you are diffing with are named.  You can
also restore the conflict or reverse it.

During the time a conflict is locked, the buffer is unmodifiable to be able to
keep track of the range of the currently displayed content.

There are post-lock and post-unlock callbacks that allow you to, for example,
change the color of the status bar to indicate a locked mode.  To use them,
implement the following two functions:

    g:conflict_slides_post_lock_callback()
    g:conflict_slides_post_unlock_callback()

There are display helper functions that allow you to toggle the `diff` option
in selected windows.  How to use them and what a conflict resolution
procedure with slides could look like is explained in
[Conflict Resolution with Vim Conflict Slides](http://vertuxeltes.blogspot.de/2013/07/conflict-resolution-with-vim-conflict.html)

Mappings
--------
By default, a number of *buffer-local* mappings are put in place during locked
mode.  If they destroy your own mappings, you can turn them off by setting
`g:conflictslides_handle_locked_mappings` to zero.  You can also define your
own mappings by creating a dictionary `g:conflictslides_locked_mappings` or you
can use the callbacks to handle mapping and unmapping yourself.

The default mappings during locked mode are as follows:

    b : insert base content
    B : append base content
    o : insert our content
    O : append our content
    t : insert their content
    T : append their content
    a : insert ours and their content
    A : insert theirs and our content

    f : restore the conflict (forward)
    r : reverse the conflict
    F : restore the conflict without the base section (Forward)
    R : reverse the conflict without the base section

    e : unlock the content (edit)
    q : restore the conflict and unlock (quit)

    <CR> : lock the next conflict
    <BS> : restore the current conflict and lock the next one

    v : visually select the conflict range for 500 ms
    V : visually select the conflict range permanently

The default modification mappings require you to be inside the conflict range
you want to change.  This way you always modify the conflict you are looking
at.  That requirement can be loosened by passing the `jumpto` optional argument
to the functions used in the mappings.

Functions
---------
Here are a few functions that can be useful in unlocked mode (getting into
locked mode is particularly useful).  Please read through the plugin file for
more documentation.

If your cursor is within a conflict range, call this function to lock it:

    CS_LockCurrentConflict()

These next functions do nothing more than their name suggests:

    CS_MoveCursorToCurrentConflict()
    CS_ReleaseLockedConflict()
    CS_DisplayCurrentLockInfo()

This next function allows you to jump to conflicts and immediately lock them.
You can pass the optional arguments in any order.  It is possible to lock the
current conflict, search backwards, prevent wrapping around file boundaries,
and restore the current conflict before moving on.

    CS_LockNextConflict('lock-current', 'backward', 'no-wrap', 'restore-current')

Independently of having or not having a conflict locked, you can move the
cursor to the next conflict marker.  Again, the arguments are optional and there
is no order requirement.  This function is used in `CS_LockNextConflict` and it
will search for the conflict start marker `<<<<<<<`.

    CS_MoveCursorToNextConflict('backward', 'no-wrap')

There are a few commands to resolve conflicts in bulk.  It is possible to
restrict the operation on conflicts above or below the current cursor position.
Example calls:

    :CsModifyAllConflicts base
    :CsModifyAllConflictsAbove ours theirs
    :CsModifyAllConflictsBelow reverse

There is more documentation in the plug-in file.

Colors
------
It makes a lot of sense to change colors according to the current mode.  There
is a function `CS_QueryState` by which it is possible to ask about the state of
the lock.  For example to change the `StatusLine` highlighting depending on if
the cursor is in a file with a locked conflict, something like these
autocommands and hooks could be used:

    au WinEnter,BufWinEnter,BufReadPost,FileReadPost  *
            \ hi StatusLine guibg=Gray
    au WinEnter,BufWinEnter,BufReadPost,FileReadPost  *
            \ if CS_QueryState('f') | hi StatusLine guibg=Blue | endif

    fun! g:conflict_slides_post_lock_callback()
        hi StatusLine guibg=Blue
    endfun

    fun! g:conflict_slides_post_unlock_callback()
        hi StatusLine guibg=Gray
    endfun

Conflict Info
-------------
There is also a function that makes information about the current
conflict range available without involving any lock:

    CS_GetCurrentConflictInfo()

It returns a dictionary with conflict marker line numbers, section
ranges, section content, and conflict marker comments.
