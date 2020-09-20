" For RTF-like copypasting
" https://vi.stackexchange.com/questions/16575/how-to-copy-text-with-syntax-highlighting
" TODO work out the xclip command
function! CopyFormatted(line1, line2)
    execute a:line1 . "," . a:line2 . "TOhtml"
    %yank *
    " !start /min powershell -noprofile "gcb | scb -as"
    " !xclip -selection clipboard -o -t text/html 
    bwipeout!
endfunction

command! -range=% HtmlClip silent call CopyFormatted(<line1>,<line2>)
