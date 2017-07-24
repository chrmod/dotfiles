" gitgutter realtime
let g:gitgutter_realtime = 750
let g:gitgutter_eager = 750

let g:ctrlp_working_path_mode = 'ra'

" ctrlp
if executable('rg')
  " Use rg over grep
  set grepprg=rg\ --vimgrep

  " Use rg in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'

  " rg is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
