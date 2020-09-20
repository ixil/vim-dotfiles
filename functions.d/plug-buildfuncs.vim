" BuildYCM:
function! BuildYCM(info)
   " info is a dictionary with 3 fields
   " - name:   name of the plugin
   " - status: 'installed', 'updated', or 'unchanged'
   " - force:  set on PlugInstall! or PlugUpdate!
   if a:info.status == 'installed' || a:info.force
     !python3 ./install.py --clangd-completer --clang-completer
   endif
endfunction

" BuildPolyglot:
function! BuildPolyglot(info)
   if a:info.status == 'installed' || a:info.force
     !./build
   endif
endfunction


