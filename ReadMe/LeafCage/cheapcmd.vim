cheapcmd.vim
============

Introduction
------------

**cheapcmd.vim** enable command-line-completion to expand short keyword of user-defined commands.  
The short keyword consists of any alphabets appended colon(:) or semicolon(;) to end.

e.g.)
- `vhg;`  -> `VimHelpGenerator`, `VimHelpGeneratorVirtual`
- `vhgv;` -> `VimHelpGeneratorVirtual`
- `qr;`   -> `QuickRun`
- `cp:`   -> `CtrlP`, `CtrlPBuffer`, `CtrlPClearAllCaches`, ... `cpfile`, `cprevious`
- `cpb:`  -> `CtrlPBuffer`
- `cb;`  -> `ConflictMarkerBoth`, `CtrlPBuffer`


The word started lower character and contained upper character or  
the word contained hyphen is keyword, too.  

- `unR`  -> `UniteRecordingBegin`, `UniteRecordingSave`, `UniteResume`
- `unRes`  -> `UniteResume`
- `un-rec`  -> `UniteRecordingBegin`, `UniteRecordingSave`


Usage
-----

```vim
"for cmdline
cmap <Tab> <Plug>(cheapcmd-expand)

"for cmdwin
aug cheapcmd-cmdwin
  autocmd!
  autocmd CmdwinEnter * call s:define_cmdwin_mappings()
aug END
function! s:define_cmdwin_mappings()
  nmap <buffer><Tab> <Plug>(cheapcmd-expand)
  imap <buffer><Tab> <Plug>(cheapcmd-expand)
endfunction
```

Type `<Tab>` after short keyword of user-defined commands in command line head.
