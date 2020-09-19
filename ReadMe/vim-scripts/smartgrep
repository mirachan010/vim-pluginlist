smartgrep
=======
Grep word in source file excluding comment for vim plugin.

Support OS
=======
Unix, MacOS X, Windows

Suport Language and Comment Type
=======
C, C++, Objective-C, C#(CSharp), Java Script   /* */, //

Usage (smartgrep.vim command)
=======
Define g:base_dir in your .vimrc file.  
	example:  
		let g:base_dir="/develop/"  
  
,g   -> recursive word grep for c,h file exclude comment by mouse cursored word  
,h   -> recursive word grep for h file exclude comment by mouse cursored word  
:Rn  -> recursive word grep for c,h file include comment  
:Rh  -> recursive word grep for h file exclude comment  
:R   -> recursive word grep for c,h file exclude comment  
:Rno -> recursive grep for c,h file include comment  
:Rho -> recursive grep for h file exclude comment  
:Ro  -> recursive grep for c,h file exclude comment  
:Rl  -> recursive word grep for c,h file exclude comment in sys_dir_w  
:Rw  -> recursive word grep for c,h file exclude comment in sys_dir_l  

Usage (smartgrep binary)
=======
$ cd {directory-you-want-to-grep}  
$ smartgrep  
Usage: smartgrep /h {word}  : recursive      grep for .h                        excluding comment  
                 /b {word}  : recursive      grep for .cpp .c .mm .m .cs .js .h excluding comment  
                 /n {word}  : recursive      grep for .cpp .c .mm .m .cs .js .h including comment  
                 /hw {word} : recursive word grep for .h                        excluding comment  
                 /bw {word} : recursive word grep for .cpp .c .mm .m .cs .js .h excluding comment  
                 /nw {word} : recursive word grep for .cpp .c .mm .m .cs .js .h including comment  

INSTALL
=======
If you are Windows or Mac OS X user, read ./plugin/smartgrep.vim file.  
If you are Unix user, type 'make + [enter]' and read ./plugin/smartgrep.vim file.  

