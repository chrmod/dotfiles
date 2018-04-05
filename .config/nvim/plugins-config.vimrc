" Disalbe ale on startup
let g:ale_enabled = 0
let g:ale_linters = {
\   'typescript': ['tslint', 'tsserver', 'typecheck'],
\}

" Disable deoplete at startup
let g:deoplete#enable_at_startup = 0
