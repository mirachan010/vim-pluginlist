vim-nose
========

Plugin wrapping `nosetests` command line tool to execute python tests inside Vim. All in the name of productivity!

Features
========

This plugin improve on *Vim* compiler option by adding some features specific to *nose*:


- Configurable python virtual environment.
- Isolate tests to be run. Run a specific test, a test case, a test module or run all tests (requires git).
- Memorize last test ran. The last test will run when commands are executed in *non-test* modules.
- Populate *Vim* quickfix window with failing tests and errors for easy navigation.

Requirements
============

For this plugin to have some value, you need this requirements to be installed in your environment:

- python
- [nose](https://nose.readthedocs.org)

These requirement are optional but improve the plugin usage:

- git
- [vim-dispatch](https://github.com/tpope/vim-dispatch) by Tim Pope to run tests asynchronously

VirtualEnv Configuration
========================

Plugin support two configuration options to help discovery of virtual environment.

1. A configuration file (usually located at the root of your project).
1. A git configuration (`vim-nose.venv`) in your git repository

If none of those configuration are set, the plugin will use either the system environment or any virtualenv already set in Vim process (terminal only).

See the plugin documentation for more details (**:h nose-virtualenv**).

Usage
=====

### `:RunTest`

Run the current test surrounding the cursor position.  Otherwise, run all tests in the scope the cursor is located in (i.e. test case or module).

### `:RunCase`

Run all tests found in the test case surrounding the cursor position. If cursor is outside a test case scope, all tests for the module (buffer) are run.

### `:RunModule`

Run all tests found in the current module (buffer).

### `:RunAllTests`

Run all tests found in the git repository of the edited buffer.

### Running last test

The plugin will *memorize* the last test, case or module used for these three commands:

    :RunTest
    :RunCase
    :RunModule

If any of these commands are called outside of a python test module (any python module name not starting with "test_...") the last test, case or module will be used. This is really useful for example when doing TDD. You write the test. Call `:RunTest`. It fails. Switch focus to source module. Add code. Call `:RunTest`. etc.

### Interactive commands

All **:Run...** command can also be launched in interactive mode. This will run tests synchronously in an external console (if possible). This is useful for debugging your program or tests. For instance, using `ipdb` inside *gVim* or *MacVim* basic shell does not support coloring! This is an attempt to fix this problem.

Example:

    :RunTest!


License
=======

Copyright © Pascal Lalancette. Distributed under the same terms as Vim itself. See :help license.
