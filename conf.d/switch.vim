" Should probably move somewhere else "
autocmd FileType tex,plaintex let b:switch_custom_definitions =
    \ [
    \    [ '\\tiny', '\\scriptsize', '\\footnotesize', '\\small', '\\normalsize', '\\large', '\\Large', '\\LARGE', '\\huge', '\\Huge' ],
    \    [ '\\displaystyle', '\\scriptstyle', '\\scriptscriptstyle', '\\textstyle' ],
    \    [ '\\part', '\\chapter', '\\section', '\\subsection', '\\subsubsection', '\\paragraph', '\\subparagraph' ],
    \    [ 'part:', 'chap:', 'sec:', 'subsec:', 'subsubsec:' ],
    \    [ 'article', 'report', 'book', 'letter', 'slides' ],
    \    [ 'a4paper', 'a5paper', 'b5paper', 'executivepaper', 'legalpaper', 'letterpaper', 'beamer', 'subfiles', 'standalone' ],
    \    [ 'onecolumn', 'twocolumn' ],
    \    [ 'oneside', 'twoside' ],
    \    [ 'draft', 'final' ],
    \    [ 'AnnArbor', 'Antibes', 'Bergen', 'Berkeley',
    \      'Berlin', 'Boadilla', 'CambridgeUS', 'Copenhagen', 'Darmstadt',
    \      'Dresden', 'Frankfurt', 'Goettingen', 'Hannover', 'Ilmenau',
    \      'JuanLesPins', 'Luebeck', 'Madrid', 'Malmoe', 'Marburg',
    \      'Montpellier', 'PaloAlto', 'Pittsburgh', 'Rochester', 'Singapore',
    \      'Szeged', 'Warsaw' ]
    \ ]

autocmd FileType gitrebase let b:switch_custom_definitions =
            \ [
            \   [ 'pick', 'reword', 'edit', 'squash', 'fixup', 'exec' ]
            \ ]
