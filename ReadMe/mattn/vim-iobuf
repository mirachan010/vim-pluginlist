# vim-iobuf

On Windows, stdout has a buffer. As you can see, this can be controllable with setbuf(), but this must be called by the child process itself. So, the parent process can not read the output of child process until the process calls fflush().
For example, this code can not read output for each times on Windows.

```c
#include <windows.h>
#include <stdio.h>

int
main(int argc, char* argv[]) {
  while (1) {
    printf("#");
    Sleep(1000);
  }
  return 0;
}
```

```vim
let job = job_start(['.\\tick.exe'], {
\  'out_mode': 'raw', 
\  'out_cb':{ch,msg->execute('echo msg', 1)},
\  'exit_cb':{jo,st->execute('echo "exited"', 1)
\}})
```

This plugin uses dll remote injection to disable buffering.

## Usage

Just call `iobuf#nobuffer`.

```vim
let job = job_start(['.\\tick.exe'], {
\  'out_mode': 'raw', 
\  'out_cb':{ch,msg->execute('echo msg', 1)},
\  'exit_cb':{jo,st->execute('echo "exited"', 1)
\}})
call iobuf#nobuffer(job)
```

## Build

```
mingw32-make
```

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
