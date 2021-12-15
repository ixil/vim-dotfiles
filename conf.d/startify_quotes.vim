let g:startify_custom_header_quotes = [
\ ['va)', '', 'Visually select all in brackets.'],
\ ['^/$', '', 'Move to the beginning/end of the line.'],
\ ['I/A', '', 'Move to the beginning/end of the line + Insert.'],
\ ['C', '', 'Change the test starting at the cursor till the end of the line.'],
\ [':SSave', '', 'Save current session using Startify.'],
\ ['q{register}', '', 'Starts recording of a macros. (stop by q, replay by @{register})'],
\ ['v/^v/V', '', 'Toggle visual mode / visual block mode / visual line mode.'],
\ ['gv', '', 'Replicate previously issued visual selection.'],
\ ['Did you know that...', '',  '... a macro can be applied on a sellected block of text by command :normal @{register}?'],
\ ['Did you know that...', '',  '... cutting and yanking can be issued for the rest of the line by upper case Y and D?'],
\ ['Did you know that...', '',  '... the last command can be repeated by the "dot" operator? Try pushing . ...'],
\ ['Did you know that...', '',  '... you can rollback opened file by e.g. 10 minutes by issuing :earlier 10m ?'],
\ ['u/^R', '', 'Undo / Redo'],
\ ['Do you want to paste stuff without messing up the indention... ?', '', 'Switch to paste mode (:set paste) before and unswitch (:set nopaste) after that.'],
\ ['Did you know that...', '', '... typing % while the cursor is on a bracket teleports you to its counterpart?'],
\ ['Looking for a file?', '', ':find {filename} finds it for you (path for search in ~/.my.vimrc).'],
\ ['File search in vertical split?', '', ':vert sf {filename} will do it. (path for search in ~/.my.vimrc)'],
\ ['3h, 3j, 3k, 3l', '', 'Jump three lines left, down, up, right.'],
\ ['H/M/L', '', 'Jump to top/middle/low part of the screan, mnemonics: HIGH/MIDDLE/LOW'],
\ ['zz/zt/zb', '', 'Get current line to the middle/top/bottom of the screan.'],
\ ]

let g:ascii = [
\ '      o',
\ '        o       _=,_',
\ '          o  o_/6 /#\',
\ '             \__ |##/',
\ '                |--\',
\ '                /   #--.',
\ '                \#|_   _#-. /',
\ '                 |/ \_( # |" ',
\ '                C/ ,--___/',
\]

let g:startify_custom_header = startify#fortune#boxed() + g:ascii