## A JDB/GDB plugin for VIM

With the plugin, you could set breakpoint in some Java file with VIM, attach to some running JVM with JDWP enabled, then step through your code. You could also attach gdb to a process, and debug your program in VIM.

* Attach jdb to a JDWP port, for example

        :StartJDB localhost:6780

* Attach gdb to a process with pid, for example

        :StartJDB 3012

> The plugin depends on `channel` feature from VIM 8.0, so to use this plugin, you must have VIM over 8.0.

## Steps to use

1. Launch your java program with JDWP enabled, such as

    >java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=6789 Sample

    >MAVEN_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,address=6789,server=y,suspend=n" mvn spring-boot:run

1. Open your java source file with VIM

1. `<F10>` to set breakpoint at current line

1. `<F5>` to attach to the running JVM, if you're using different port, change it with below command

    >let g:jdbPort="6799"

    After you attached to the running JVM, you'll see a console window below current window. You could input any `jdb` command in console window, escape to normal mode to press `enter` to execute it.

1. `<F3>` to step through your code now.

### Debugging keys
* `<F2>` to step into.
* `<F4>` to step out.
* `<F5>` to continue.
* `<F6>` to quit.
* Visual select a word or expression, then `E` to print its value or eval it.

### Breakpoint in nested class

For explicitly declared nested class, you could set breakpoint just as in normal class. But for some anonymous nested class, you need follow below steps.

In the console window, input

    class com.your.org.ClassWithNestedClass

escape to normal mode, press `enter`, it will list all nested anonymous classes, such as

    main[1] Class: com.your.org.ClassWithNestedClass
    extends: android.webkit.WebView
    nested: com.your.org.ClassWithNestedClass$1
    nested: com.your.org.ClassWithNestedClass$2
    nested: com.your.org.ClassWithNestedClass$3
    nested: com.your.org.ClassWithNestedClass$4
    nested: com.your.org.ClassWithNestedClass$5

check each nested class with command `class com.your.org.<nestedClassName>`, such as

    class com.your.org.ClassWithNestedClass$4

to get the exact one you need.

Then use command

    stop in com.your.org.ClassWithNestedClass$4.<MethodNameInThisNestedClass>
