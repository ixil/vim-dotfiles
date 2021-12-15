if exists('g:started_by_firenvim')
    set laststatus=0
endif
let g:firenvim_config = {
            \ 'globalSettings': {
                \ 'alt': 'all',
                \  },
            \ 'localSettings': {
                \ '.*': {
                    \ 'cmdline': 'firenvim',
                    \ 'priority': 0,
                    \ 'selector': 'textarea:not([readonly]):not([class="handsontableInput"]), div[role="textbox"]',
                    \ 'takeover': 'always',
                \ },
                \ '.*notion\.so.*': { 'priority': 9, 'takeover': 'never', },
                \ '.*docs\.google\.com.*': { 'priority': 9, 'takeover': 'never', },
            \ }
        \ }
