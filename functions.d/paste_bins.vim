" https://gist.github.com/romainl/1cad2606f7b00088dda3bb511af50d53

" Mac OS X (requires curl)
" ------------------------
" command! -range=% SP  <line1>,<line2>w !curl -F 'sprunge=<-' http://sprunge.us | tr -d '\n' | pbcopy
" command! -range=% CL  <line1>,<line2>w !curl -F 'clbin=<-' https://clbin.com | tr -d '\n' | pbcopy
" command! -range=% VP  <line1>,<line2>w !curl -F 'text=<-' http://vpaste.net | tr -d '\n' | pbcopy
" command! -range=% PB  <line1>,<line2>w !curl -F 'c=@-' https://ptpb.pw/?u=1 | tr -d '\n' | pbcopy
" command! -range=% IX  <line1>,<line2>w !curl -F 'f:1=<-' ix.io | tr -d '\n' | pbcopy
" command! -range=% TB  <line1>,<line2>w !nc termbin 9999 | tr -d '\n' | pbcopy

" Linux and other UNIX-like systems (requires curl and xclip)
" -----------------------------------------------------------
command! -range=% SP  <line1>,<line2>w !curl -F 'sprunge=<-' http://sprunge.us | tr -d '\n' | xclip
command! -range=% CL  <line1>,<line2>w !curl -F 'clbin=<-' https://clbin.com | tr -d '\n' | xclip
command! -range=% VP  <line1>,<line2>w !curl -F 'text=<-' http://vpaste.net | tr -d '\n' | xclip
command! -range=% PB  <line1>,<line2>w !curl -F 'c=@-' https://ptpb.pw/?u=1 | tr -d '\n' | xclip
command! -range=% IX  <line1>,<line2>w !curl -F 'f:1=<-' ix.io | tr -d '\n' | xclip
command! -range=% TB  <line1>,<line2>w !nc termbin 9999 | tr -d '\n' | xclip
