```vim
let g:quickrun_config = {
\   "cpp/msvc2010" : {
\       "command" : "cl",
\       "exec"    : ['%c %o %s', '%s:p:r.exe %a'],
\       "cmdopt"  : "/EHsc",
\       "hook/output_encode/encoding" : "sjis",
\       "hook/vcvarsall/enable" : 1,
\       "hook/vcvarsall/bat" : shellescape($VS100COMNTOOLS  . '..\..\VC\vcvarsall.bat'),
\   },
\
\   "cpp/msvc2008" : {
\       "command" : "cl",
\       "exec"    : ['%c %o %s', '%s:p:r.exe %a'],
\       "cmdopt"  : "/EHsc",
\       "hook/output_encode/encoding" : "sjis",
\       "hook/vcvarsall/enable" : 1,
\       "hook/vcvarsall/bat" : shellescape($VS90COMNTOOLS  . '..\..\VC\vcvarsall.bat'),
\   },
\
\   "cpp/msvc2005" : {
\       "command" : "cl",
\       "exec"    : ['%c %o %s', '%s:p:r.exe %a'],
\       "cmdopt"  : "/EHsc",
\       "hook/output_encode/encoding" : "sjis",
\       "hook/vcvarsall/enable" : 1,
\       "hook/vcvarsall/bat" : shellescape($VS80COMNTOOLS  . '..\..\VC\vcvarsall.bat'),
\   },
\}
```
