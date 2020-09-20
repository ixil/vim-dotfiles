" vim compiler file
" Compiler:		clang (Apple c compiler)
" Maintainer:   Vincent B. (twinside@free.fr)
" Last Change:  2010 sep 28
if exists("current_compiler")
  finish
endif
if exists("clang")
  finish
endif
let current_compiler = "clang"

let s:cpo_save = &cpo
set cpo-=C

" CompilerSet errorformat=%f:%l:%c:\ %t%s:\ %m
CompilerSet errorformat=
      \%-GIn\ file\ included\ from\ %.%#,
      \%-G\\s%#from\ %.%#,
      \%*[^\"]\"%f\"%*\\D%l:%c:\ %m,
      \%*[^\"]\"%f\"%*\\D%l:\ %m,
      \\"%f\"%*\\D%l:%c:\ %m,
      \\"%f\"%*\\D%l:\ %m,
      \%-G%f:%l:\ %trror:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,
      \%-G%f:%l:\ %trror:\ for\ each\ function\ it\ appears\ in.),
      \%f:%l:%c:\ %trror:\ %m,
      \%f:%l:%c:\ %tarning:\ %m,
      \%f:%l:%c:\ %m,
      \%f:%l:\ %trror:\ %m,
      \%f:%l:\ %tarning:\ %m,
      \%f:%l:\ %m,
      \%f:\\(%*[^\\)]\\):\ %m,
      \\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,
      \%D%*\\a[%*\\d]:\ Entering\ directory\ %*[`']%f',
      \%X%*\\a[%*\\d]:\ Leaving\ directory\ %*[`']%f',
      \%D%*\\a:\ Entering\ directory\ %*[`']%f',
      \%X%*\\a:\ Leaving\ directory\ %*[`']%f',
      \%DMaking\ %*\\a\ in\ %f


let &cpo = s:cpo_save
unlet s:cpo_save

"vim: ft=vim

